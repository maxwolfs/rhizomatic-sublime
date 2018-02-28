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

## Wie interagieren die Teile?

* 2 - ? weiße LEDs / Statusanzeige auf Board / Approved, Denial, Serverconnection required, ... ?
* Intercourse via Magnetarretierung der Cards

## Data

card =  {
	“id”:”hash”, 
	“value”:”int” };
	
## Timetable

### Deadlines

| What        | When            | 
| ------------- |:-------------:|
| PCB Finish Deadline   | 7.3.2018    |
| Presentation Start    | 6.4.2018    |

### Plan

| Week        | What To Do  | 
| ------------- |:-------------:|
| 26.2. - 4.3.  | PCB Design, ESP-32 Tests, Flow Chart | 
| 5.3. - 11.3.  | Software |
| 12.3. - 18.3. | Software |
| 19.3. - 25.3. | ... | 
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

