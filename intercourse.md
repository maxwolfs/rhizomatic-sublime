# Konsumkunst als soziales Experiment

## Karte für (social) intercourse ← wird nicht erklärt!

Single Devices with unique id– Card like format – Schlauchbeutelverpackung – social intercourse interaction
[old Presentation](https://docs.google.com/presentation/d/1cpQ3VtDt5smEuH57AWrwYjjEIkGQ9L3YSArqFy4ICfg/edit#slide=id.g32697ab881_0_8)

#mystisch #schräg #poppig #cool

* unique interaction
* blockhain
* eindimensionales datenbank browsen
* feature entwicklung on the fly
* Spezieller Dispenser / Automat in Galerie
* dynamischer Preis gekoppelt an Aktiviät der User oder Ausgabe an globale Zeitevents
* verschiedene Auflagen / verschiedene Generationen
* (Ablaufdatum? Interaktion rettet die Karte.)

## Hardware

* USB-A Male Pins / Anschluss zum Aufladen eines superflachen Super Caps als Stromversorgung
* ESP-32 (https://tinyurl.com/yadrkr9d) sendet Daten zur Blockchain und received Verification
* Super-Cap (https://tinyurl.com/y7quk3u3) lädt sich nur bei erfolgreichem (von beiden Cards verifiziertem Intercourse) Intercourse auf. “1 Ladung pro Intercourse”
* Voltage Regulator Input: 2-5.5V Output: 2.7V
* Transistor zur Bestimmung ob Ladung des Kondensators oder Pairing
* LEDs
* Magnete
* PCB mit Siebdruck (uniqude Hash ID der cards generiert Grafik)

### BOM

| Qty | Part | Description | Package | Price | Comment | Link |
| :---: | :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | ESP8266EX | MCU | QFN | 1.31 € | ESP | [Mouser](https://www.mouser.de/ProductDetail/Espressif-Systems/ESP8266EX?qs=sGAEpiMZZMve4%2fbfQkoj%252bGif8WCprhV4ngk1mHM9Xjs%3d) |
| 1 | Murata DMF 3| 470 mF |  _custom_ | 5.85 € | | [Mouser](https://www.mouser.de/ProductDetail/Murata-Electronics/DMF3Z5R5H474M3DTA0?qs=sGAEpiMZZMsCu9HefNWqpow%252bJity0uDxL9hAWoIDD1A%3d) |

## Tech
* [ESP-32 Wroom Datasheet](https://www.espressif.com/sites/default/files/documentation/esp-wroom-32_datasheet_en.pdf)
* [Kondensator Rechner](http://www.elektronik-labor.de/OnlineRechner/Kapazitaet.html)
* [Super-Cap Tech Sheet](https://www.mouser.de/ProductDetail/81-DMF3Z5R5H474M3DA0)
* [Hardware Guidelines for super cap](https://www.murata.com/~/media/webrenewal/products/capacitor/edlc/techguide/electrical/edlc_technical_note.pdf)
* [Voltage Regulator 5V -> 2.5V](https://www.mouser.de/ProductDetail/STMicroelectronics/LD1117S25TR?qs=sGAEpiMZZMuXVhsoTePomv6abewqdBmu8)

## Wie interagieren die Teile?

* 2 - ? weiße LEDs / Statusanzeige auf Board / Approved, Denial, Serverconnection required, ... ?
* Intercourse via Magnetarretierung der Cards

## Resources / Links

#### ESP8266

* [LORA WAN Network](https://www.lora-alliance.org/)
* [ESP8266 SSL / HTTPS](https://github.com/arduino-libraries/ArduinoHttpClient/issues/13)
* [ESP8266 POST JSON -> Webserver](https://techtutorialsx.com/2017/01/08/esp8266-posting-json-data-to-a-flask-server-on-the-cloud/)
* [ESP KiCad Library](https://github.com/jdunmire/kicad-ESP8266)
* [ESP8266EX PCB Design / Layout Examples](http://www.liot.io/hardware/design/)
* __[OFFICIAL ESP8266EX Hardware Design Reference](http://akizukidenshi.com/download/ds/espressifsystems/0B-ESP8266__Hardware_User_Guide__EN_v1.1.pdf)__
* [Programming ESP8266](https://hackaday.com/2015/03/18/how-to-directly-program-an-inexpensive-esp8266-wifi-module/)
* [Example Layout by Sparkfun](https://www.sparkfun.com/products/13231) and [Schematic](https://cdn.sparkfun.com/datasheets/Wireless/WiFi/SparkFun_ESP8266_Thing.pdf)

#### Super Capacitors / LiPo / Energy Supply / Balancing

* [Murata LiPo UMAL](https://www.murata.com/~/media/webrenewal/products/smallenergydevice/umal24_datasheet.ashx?la=en-us)
* [TI BQ33100 SuperCap Controller IC](http://www.ti.com/product/BQ33100)
* [TI BQ24640 SuperCap Charger IC](http://www.ti.com/product/BQ24640)
* [High Current Supercapacitor Backup Controller IC](http://www.linear.com/product/LTC3350)
* [LTC3225 - 150mA Supercapacitor Charger](http://www.linear.com/product/LTC3225)
* [TPS6122x Low Input Voltage, 0.7V Boost Converter](http://www.ti.com/lit/ds/slvs776b/slvs776b.pdf)
* [LiPo Ladegerät mit Balancer - Eigenbau](https://fpv-community.de/showthread.php?64194-LiPo-Ladeger%E4t-mit-Balancer-Eigenbau)
* [ESP8266 LiPo Power Regulator](https://randomnerdtutorials.com/esp8266-voltage-regulator-lipo-and-li-ion-batteries/)
* [Equation for calculating supply current from caps](https://electronics.stackexchange.com/questions/240329/using-supercapacitor-as-backup-for-mcu)

#### RF Energy Harvesting

* [Murata: Supercap enables “battery-less” smart card/ID card](https://www.murata.com/~/media/webrenewal/products/capacitor/edlc/appsnote/c2m1cxs443e_appnote_smartcard.ashx?la=en-us)
* [Energy Harvesting Mouser Article](https://www.mouser.de/applications/rf_energy_harvesting/)


## Data

card =  {
	“id”:”hash”,
	“value”:”int” };

## Timetable

### Deadlines

| What        | When            |
| ------------- |:-------------:|
| PCB Finish Deadline   | 7.3.2018 -> 16.3.2018    |
| Presentation Start    | 6.4.2018    |

### Plan

| Week        | What To Do  |
| ------------- |:-------------:|
| 26.2. - 4.3.  | PCB Design, ESP-32 Tests, Flow Chart |
| 5.3. - 11.3.  | PCB Design, ESP-8266 Tests, Super Cap Test |
| 12.3. - 18.3. | PCB Design, ESP-8266 Tests |
| 19.3. - 25.3. | Software |
| 26.3. - 1.4.  | ... |
| 2.4. - 9.4.   | ... |
| 10.4. - 17.4. | ... |
| 18.4. - 20.4. | ... |

## Budget

| What        | Amount  |
| ------------- |:-------------:|
| PCBs x50  | ~75,00 € incl. Zoll + EUSt |
| ESP-32s | ~XX,xx |
| SuperCaps | ~XX,xx |
| LEDs | ~XX,xx |
| Transistoren? | ~XX,xx |
| Voltage Regulators | ~XX,xx |
| Verpackungen | ~XX,xx |
| __GESAMT__ | __~XX,xx__ |

# TODO

* Schematic
* BOM
* PCB Layout
* Design Artwork
* Printing Artwork
* Design Manual
* Printing Manual
* Design Packaging
* Printing Packaging
* Software Cards
* Software Cloud
