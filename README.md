# WASP 
## Wireless Assisted Serial Port

---
***This is a Work in Progress***

---
### Motivation
The goal of this project is to have a serial to wireless converter that allows the read and write to a serial port over wifi.

This would allow access to remote devices that do not have a wifi connection or to debug devices that have a permanent serial port and can sometimes crash and lose wifi connectivity (ie: embedded linux systems).

As an end goal this should work in a "ssh" kind of way.

---
### Requirements

* Receive serial data over wifi
* Send serial data over wifi
* Possibiliy to configure the WiFi connection
* Powered over USB or 5V header
* Serial data interface directly on the device

---
### Current implementation
Currently it is based on a STM32 and a ESP-01 for wifi.

The current example works over a tcp connection with the WASP operating as a client.

The current example is based on a fork of the drogue-esp8266 crate with modifications to support version 2.1.0.0 of the ESP-AT firmware

---
## License

### Firmware:

Licensed under either of

- Apache License, Version 2.0 ([LICENSE-APACHE](LICENSE-APACHE) or
  http://www.apache.org/licenses/LICENSE-2.0)

- MIT license ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)

at your option.

### Hardware:

Licensed under CERN Open Hardware License Permissive, Version 2.0 ([LICENSE-CERN-OHL-P](LICENSE-CERN-OHL-P) or
https://ohwr.org/cern_ohl_p_v2.txt)
