#include <ESP8266WiFi.h>
const char* SSID = "123geheim";
const char* PASS = "";
char server[] = "mail.smtpcorp.com";

WiFiClient client;
void setup()
{
  Serial.begin(74880);
  delay(10);
  Serial.println("");
  Serial.println("");

  int numberOfNetworks = WiFi.scanNetworks();

  for (int i = 0; i < numberOfNetworks; i++) {

    Serial.print("Network name: ");
    Serial.println(WiFi.SSID(i));
    Serial.print("Signal strength: ");
    Serial.println(WiFi.RSSI(i));
    Serial.println("-----------------------");

  }
  
  Serial.print("Connecting To ");
  Serial.println(SSID);
  WiFi.begin(SSID, PASS);

  while (WiFi.status() != WL_CONNECTED)
  {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.println("WiFi Connected");
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());
  byte ret = sendEmail();
}

void loop()
{
}

byte sendEmail()
{
  byte thisByte = 0;
  byte respCode;

  if (client.connect(server, 2525) == 1) {
    Serial.println(F("connected"));
  } else {
    Serial.println(F("connection failed"));
    return 0;
  }
  if (!eRcv()) return 0;

  Serial.println(F("Sending EHLO"));
  client.println("EHLO www.example.com");
  if (!eRcv()) return 0;
  Serial.println(F("Sending auth login"));
  client.println("auth login");
  if (!eRcv()) return 0;
  Serial.println(F("Sending User"));
  // Change to your base64, ASCII encoded user
  client.println("eWVzdGVyZGF6ZWRAZ21haWwuY29t"); //<---------User
  if (!eRcv()) return 0;
  Serial.println(F("Sending Password"));
  // change to your base64, ASCII encoded password
  client.println("UDE4VElldEl4ektm");//<---------Passw P18TIetIxzKf
  if (!eRcv()) return 0;
  Serial.println(F("Sending From"));
  // change to your email address (sender)
  client.println(F("MAIL From: cccc@gmail.com"));
  if (!eRcv()) return 0;
  // change to recipient address
  Serial.println(F("Sending To"));
  client.println(F("RCPT To: mwolfs@hfk-bremen.de"));
  if (!eRcv()) return 0;
  Serial.println(F("Sending DATA"));
  client.println(F("DATA"));
  if (!eRcv()) return 0;
  Serial.println(F("Sending email"));
  // change to recipient address
  client.println(F("To:  yesterdazed@gmail.com"));
  // change to your address
  client.println(F("From: mwolfs@hfk-bremen.de"));
  client.println(F("Subject: Esp8266 email test\r\n"));
  client.println(F("This is from my ESP8266\n"));
  client.println(F("This is line 2 from my ESP8266"));
  client.println(F("This is line 3 from my ESP8266"));

  client.println(F("."));
  if (!eRcv()) return 0;
  Serial.println(F("Sending QUIT"));
  client.println(F("QUIT"));
  if (!eRcv()) return 0;
  client.stop();
  Serial.println(F("disconnected"));
  return 1;
}

byte eRcv()
{
  byte respCode;
  byte thisByte;
  int loopCount = 0;

  while (!client.available()) {
    delay(1);
    loopCount++;
    // if nothing received for 10 seconds, timeout
    if (loopCount > 10000) {
      client.stop();
      Serial.println(F("\r\nTimeout"));
      return 0;
    }
  }

  respCode = client.peek();
  while (client.available())
  {
    thisByte = client.read();
    Serial.write(thisByte);
  }

  if (respCode >= '4')
  {
    //  efail();
    return 0;
  }
  return 1;
}
