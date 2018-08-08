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

-> [Mouser](https://www.mouser.com/ProjectManager/ProjectDetail.aspx?AccessID=86460eb120)

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


* [RF PCB Layout Guidelines](http://iot-bits.com/simple-rf-pcb-layout-tips-tricks/)
* [LORA WAN Network](https://www.lora-alliance.org/)
* [ESP8266 SSL / HTTPS](https://github.com/arduino-libraries/ArduinoHttpClient/issues/13)
* [ESP8266 POST JSON -> Webserver](https://techtutorialsx.com/2017/01/08/esp8266-posting-json-data-to-a-flask-server-on-the-cloud/)
* [ESP KiCad Library](https://github.com/jdunmire/kicad-ESP8266)
* [ESP8266EX PCB Design / Layout Examples](http://www.liot.io/hardware/design/)
* __[OFFICIAL ESP8266EX Hardware Design Reference](http://akizukidenshi.com/download/ds/espressifsystems/0B-ESP8266__Hardware_User_Guide__EN_v1.1.pdf)__
* [Programming ESP8266](https://hackaday.com/2015/03/18/how-to-directly-program-an-inexpensive-esp8266-wifi-module/)
* [Example Layout by Sparkfun](https://www.sparkfun.com/products/13231) and [Schematic](https://cdn.sparkfun.com/datasheets/Wireless/WiFi/SparkFun_ESP8266_Thing.pdf)
* [Boot Mode Selection](https://github.com/espressif/esptool/wiki/ESP8266-Boot-Mode-Selection)
* [Pin Definition](https://github.com/esp8266/esp8266-wiki/wiki/Pin-definition)

#### ESP8266 FLASH / EEPROM

* [How to save variable into flash](https://github.com/esp8266/Arduino/issues/1537)
* [FLASH - User data storage](https://bbs.espressif.com/viewtopic.php?t=698)
* [Save ESP8266EX RAM with PROGMEM](https://www.espressif.com/sites/default/files/documentation/save_esp8266ex_ram_with_progmem_en.pdf)

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
	“value”:”int”
};

## Packaging

* [Popcorn Design](https://www.trendhunter.com/trends/microwave-popcorn-bag)

## KiCAD
* [Artworks in KiCAD](https://hackaday.io/project/18508-mr-robot-badge/log/53901-this-is-how-you-do-art-in-kicad)
