#![no_main]
#![no_std]


use log::{LevelFilter};
use rtt_logger::RTTLogger;
use rtt_target::rtt_init_print;
use panic_rtt_target as _;

use stm32f4xx_hal::{
    gpio::{gpioa::PA6, Output, PushPull},
    prelude::*,
    serial::{config::Config, Event, Rx, Serial, Tx},
    stm32::*,
};

use rtic::cyccnt::U32Ext;

use drogue_esp8266 as esp8266;
use esp8266::protocol::{Response, WiFiMode};
// TODO: Replace drogue_network with embedded_nal
// use embedded_nal::{TcpServer};
use drogue_network::{
    tcp::{Mode, TcpStack},
    addr::{HostSocketAddr, HostAddr},
};
use core::str::FromStr;
use heapless::consts::{U16, U2,U512};
use heapless::i;
use heapless::spsc::{Producer, Consumer, Queue};

static LOGGER: RTTLogger = RTTLogger::new(LevelFilter::Debug);

const PERIOD: u32 = 50_000_000;
const DIGEST_DELAY: u32 = 200;
const WIFI_SSID: &str = include_str!("wifi.ssid");
const WIFI_PASSWORD: &str = include_str!("wifi.password");
const HOST: &str = "192.168.1.66";

// We need to pass monotonic = rtic::cyccnt::CYCCNT to use schedule feature fo RTIC
#[rtic::app(device = stm32f4xx_hal::stm32, peripherals = true, monotonic = rtic::cyccnt::CYCCNT)]
const APP: () = {
    // Global resources (global variables) are defined here and initialized with the
    // `LateResources` struct in init
    struct Resources {
        led: PA6<Output<PushPull>>,
        adapter: Option<esp8266::adapter::Adapter<'static, Tx<USART2>>>,
        ingress: esp8266::ingress::Ingress<'static, Rx<USART2>>,
        rx_ext: Rx<USART1>,
        usart_ext_producer: Producer<'static, u8, U512>,
        usart_ext_consumer: Consumer<'static, u8, U512>
    }

    #[init(schedule = [blinker], spawn = [digest])]
    fn init(cx: init::Context) -> init::LateResources {
        // hprintln!("init").unwrap();
        rtt_init_print!(BlockIfFull, 4098);
        log::set_logger(&LOGGER).unwrap();
        log::set_max_level(log::LevelFilter::Info);
        log::info!("init");
        // Enable cycle counter
        let mut core = cx.core;
        core.DWT.enable_cycle_counter();

        let device: stm32f4xx_hal::stm32::Peripherals = cx.device;

        // Set up the system clock. We want to run at 48MHz for this one.
        let rcc = device.RCC.constrain();
        let clocks = rcc.cfgr.sysclk(48.mhz()).freeze();

        // Set up the LEDs PA6
        let gpioa = device.GPIOA.split();
        let (tx_esp, rx_esp, tx_ext, rx_ext, mut reset, mut en, mut led) = (
            gpioa.pa2.into_alternate_af7(),
            gpioa.pa3.into_alternate_af7(),
            gpioa.pa9.into_alternate_af7(),
            gpioa.pa10.into_alternate_af7(),
            gpioa.pa4.into_push_pull_output(),
            gpioa.pa5.into_push_pull_output(),
            gpioa.pa6.into_push_pull_output(),
        );

        let mut serial_ext = Serial::usart1(
            device.USART1,
            (tx_ext, rx_ext),
            Config::default().baudrate(115200.bps()),
            clocks,
        )
        .unwrap();

        serial_ext.listen(Event::Rxne);
        let (_tx_ext, rx_ext) = serial_ext.split();

        let mut serial_esp = Serial::usart2(
            device.USART2,
            (tx_esp, rx_esp),
            Config::default().baudrate(921600.bps()),
            clocks,
        )
        .unwrap();

        serial_esp.listen(Event::Rxne);
        let (tx, rx) = serial_esp.split();

        led.set_low().unwrap();

        static mut RESPONSE_QUEUE: Queue<Response, U2> = Queue(i::Queue::new());
        static mut NOTIFICATION_QUEUE: Queue<Response, U16> = Queue(i::Queue::new());
        static mut USART_EXT_QUEUE: Queue<u8, U512> = Queue(i::Queue::new());
        let (usart_ext_producer, usart_ext_consumer) = unsafe { &mut USART_EXT_QUEUE}.split();

        let (adapter, ingress) = esp8266::initialize(
            tx,
            rx,
            &mut en,
            &mut reset,
            unsafe { &mut RESPONSE_QUEUE },
            unsafe { &mut NOTIFICATION_QUEUE },
        )
        .unwrap();

        // Schedule the blinking task
        cx.schedule.blinker(cx.start + PERIOD.cycles()).unwrap();
        cx.spawn.digest().unwrap();

        init::LateResources {
            led: led,
            adapter: Some(adapter),
            ingress: ingress,
            rx_ext: rx_ext,
            usart_ext_producer: usart_ext_producer,
            usart_ext_consumer: usart_ext_consumer,
        }
    }

    #[idle(resources = [adapter, usart_ext_consumer])]
    fn idle(cx: idle::Context) -> ! {
        log::info!("idle");
        let mut adapter = cx.resources.adapter.take().unwrap();

        let result = adapter.get_firmware_info();
        log::info!("firmware: {:?}", result);

        let result = adapter.set_mode(WiFiMode::Station);
        log::info!("set mode {:?}", result);

        let result = adapter.join(WIFI_SSID, WIFI_PASSWORD);
        log::info!("joined wifi {:?}", result);

        let result = adapter.get_ip_address();
        log::info!("IP {:?}", result);

        let network = adapter.into_network_stack();
        log::info!("network initialized");

        let socket = network.open(Mode::Blocking).unwrap();
        log::info!("socket {:?}", socket);

        let socket_addr = HostSocketAddr::new(
            HostAddr::from_str(HOST).unwrap(),
            9999,
        );

        let mut socket = network.connect(socket, socket_addr).unwrap();

        log::info!("socket connected {:?}", socket);

        // Test loop for server
        // for n in 1..2 as u8 {
        //     let mut data: [u8; 12] = Default::default(); 
        //     data.copy_from_slice(b"Hello world0");
        //     data[11] = n;
        //     // let data = r#"{"temp": 41.23}"#;

        //     network.write(&mut socket, &data );
        //     log::info!("wrote");
        //     let mut buffer: [u8; 512] = [0; 512];

        //     log::info!("reading");
        //     match network.read(&mut socket, & mut buffer) {
        //         Ok(len) => log::info!("Received: {}", len),
        //         Err(nb::Error::WouldBlock) => log::error!("WouldBlock"),
        //         Err(_) => log::error!("other")
        //     }

        //     for b in buffer.iter() {
        //         rprint!("{}", *b as char);
        //     }
        //     log::info!("");
        // }

        let mut data = [0; 512];
        
        loop {
            let mut pos = 0;
            while let Some(c) = cx.resources.usart_ext_consumer.dequeue() {
                // log::info!("Received via queue: {}", c as char);
                data[pos] = c;
                pos += 1;
            }
            if pos > 0 {
                network.write(&mut socket, &data[0..pos]).unwrap();
            }
        }

        // network.close(socket);
    }

    #[task(resources = [led], schedule = [blinker])]
    fn blinker(cx: blinker::Context) {
        // Use the safe local `static mut` of RTIC
        static mut LED_STATE: bool = false;

        if *LED_STATE {
            cx.resources.led.set_high().unwrap();
            *LED_STATE = false;
        } else {
            cx.resources.led.set_low().unwrap();
            *LED_STATE = true;
        }
        cx.schedule.blinker(cx.scheduled + PERIOD.cycles()).unwrap();
    }

    #[task(binds = USART1, priority = 10, resources = [rx_ext, usart_ext_producer])]
    fn usart1(ctx: usart1::Context) {
        if let Ok(c) = ctx.resources.rx_ext.read() {
            log::debug!("Received: {}", c as char);
            if let Err(c) = ctx.resources.usart_ext_producer.enqueue(c) {
                log::error!("failed to enqueue character {:?}", c as char);
            }
        } else {
            log::error!("failed to read");
        }
        
        
    }

    #[task(binds = USART2, priority = 10, resources = [ingress])]
    fn usart2(ctx: usart2::Context) {
        if let Err(b) = ctx.resources.ingress.isr() {
            log::error!("failed to ingress {}", b as char);
        }
    }

    #[task(schedule = [digest], priority = 2, resources = [ingress])]
    fn digest(mut ctx: digest::Context) {
        ctx.resources.ingress.lock(|ingress| ingress.digest());
        ctx.schedule
            .digest(ctx.scheduled + (DIGEST_DELAY * 100_000).cycles())
            .unwrap();
    }

    extern "C" {
        fn EXTI0();
        fn EXTI1();
    }
};
