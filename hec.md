# Application for HEC Sponsorship 2018

# Rhizomatic Machines

![Interaction](Presentation/Graphics/michealangelo.jpg)

Wir haben eine neue Interaktion erfunden.

## Hintergrund und Konzept

Der aktuelle Trend digitaler Services von Shopping über soziale Netzwerke bis hin zu zivilen Institutionen besteht darin, die Dienstleistungen in Apps und Webseiten über General Purpose Devices allen voran Smartphones anzubieten. Dieses Paradigma trifft die Annahme, dass ein Interface - in diesem Falle der Touchscreen - das beste Lösung zu sein scheint. In unseren Augen ist dieser jedoch nur der kleinste gemeinsame Nenner.

Wie kann man Cloud Technologien und Digital Services bedeutungsvoll in den Alltag implementieren? Wir sind dabei auf der Suche nach einer besseren Lösung, die wir im Bereich UI und UX finden wollen. Unser Ansatz: Wir entwickeln ein sicheres IoT Wearable, das als Brücke zwischen barem Metall und der Cloud fungiert.

Wir sehen in unserem Produkt eine soziale Sandbox, die ganzheitlich von Cryptography bis UX Design gedacht ist. Das Projekt an sich stellt in seiner Schnittmenge experimentelle Grundlagenforschung dar. Wir untersuchen Felder wie Interaction Design, Blockchain und IoT und fragen uns, wie man diese Technologien in einem sinnvolleren und vor allem bedeutungsvolleren Kontext in unserem Alltag implementieren kann. Im gegenwärtigen Konzept beschäftigen wir uns mit der Machbarkeit eines solchen Services, wollen aber mit Hilfe des Sponsorships die Möglichkeiten der Sandbox mit diversen Szenarien eruieren. So können wir uns beispielsweise Anwednungen wie ein soziales Netzwerk beruhend auf physischer Interaktion vorstellen.

## Stand der Dinge

Im letzten Semester haben wir haben einen funktionsfähigen Prototypen entwickelt. Er besteht aus Karten/PCBs und einem Web Interface mit Datenvisualisierung und Datenbank. Eine Interaktion der Karten erzeugt einen Eintrag in der Cloud, der sich in einem Graphen manifestiert. Maßgeblich bestimmend für den aktuellen Zwischenstand des Projekts war eine medienkünstlerische sowie gestalterische Perspektive auf eine neue Interaktion, die eine Brücke zwischen physischer Realität und Cloud bildet. Der eigens entworfene Schaltkreis und das Layout nutzen das Medium der Platine nicht als bloßen Träger von Elektronikbauteilen, sondern formen aus ihm ein ästhetisches Artefakt. Durch diese bedeutungsvolle Aufwertung und unserer entwickelten Interaktion zweier Karten mittels selbst entwickelten Magnetkontakten entsteht darüberhinaus eine neue User Experience von Bedeutung.

![userflow](Design/Graphics/rhizm_flowchart.png)

Jede Karte hat eine einzigartige ID. Werden zwei Karten an ihren Magnetkontakten verbunden, wecken sie sich gegenseitig aus dem Tiefschlaf auf und tauschen über die Schnittstelle ihre IDs aus. Ein nachhaltiger Superkondensator versorgt diesen Vorgang mit Strom. Wird die Karte das nächste Mal via USB-C aufgeladen, sendet sie automatisch mit Hilfe ihrer integrierten WiFi-Funktionalität die vorher getätige Verbindung an die API. Haben dies beide Karten getan, werden die Pairing-Anfragen in der Datenbank als verifiziert gesetzt. Eine Visualisierung aller verifizierten Kartenpairings ist auf der Hauptseite http://www.rhizomaticmachines.com zu sehen.

![graph](Design/Graphics/graph.png)

Im grafischen Interface wird jede Karte durch einen Kreis mit relationalen Verbindungen dargestellt. Je größer die Punkte, desto mehr verifizierte Pairings hat die Karte zu verzeichnen. Zu sehen ist also eine Karte aller gerade bestehenden Prototypen und ihrer Pairing-Aktivitäten. Ein Mesh sozialer Interaktionen.

## Ziel

Der Fortschritt des Projekts ist stark an finazielle Möglichkeiten gekoppelt. Unser Wunsch ist es, mit dem HEC Sponsorship eine kleine Auflage unserer Karten produzieren zu können, damit wir die Funktionalität und Relevanz an einer Testgruppe wissenschaftlich evaluieren können. Ferner würden wir uns freuen den Vorgang zusammen mit HEC als Tech Insider eruieren zu können.

## Budget

| Position       | Betrag    |
| -------------- | --------- |
| PCBs           | 300€      |
| Komponenten    | 800€      |
| Werkzeuge      | 200€      |
| Hosting/Server | 200€      |
| **Summe**      | **1500€** |

## Roadmap

| Zeitraum      | ToDo                                                                    |
| ------------- | ----------------------------------------------------------------------- |
| Mai           | Grundlagenforschung, Realigning, Verständnis der Technologien vertiefen |
| Juni - Juli   | Redesign                                                                |
| Juli - August | Test Phase and Evaluation                                               |
| September     | Evaluation                                                              |

## Fotos

![everyday](Presentation/Graphics/pouch_1.jpg)
![Karte](Presentation/Graphics/card_front.png)
