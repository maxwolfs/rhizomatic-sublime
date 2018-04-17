#include <ESP8266HTTPClient.h>
#include <ESP8266WiFi.h>
#include <ArduinoJson.h>
#include <Bounce2.h>

const byte BUTTON1 = 2;

Bounce debouncer = Bounce();

//Card 1
String my_id = "f049cd234b5a445766394925a2f0c46961d526f2";
String secret_key = "genesis";
String random_id;
String available_ids [] =
{
  "f049cd234b5a445766394925a2f0c46961d526f2",
  "bd981973599153991c20a92552fd847a85614e77",
  "d6c6a650b4271e10ba37e23169bade99c1f268af",
  "f40a36b458933a9d9a82009565b3a2639a2bc118",
  "1740dd69a87d9bc54f8a9d00622dba53ddd092fe",
  "ecf98357e1163871d1e60f07faa826807b919e65",
  "8d719eb01a43f4b995d3ad099172cef3bcb4d126",
  "c3c2ba2ef9fd3865bc6c4ef24c531c896d9281fd",
  "5ac70bd82e87f647149cd042ed5866c3127d74a9",
  "436e455c633f6d945bec1b113ee213e7e92c63d6",
  "959424cff45af142625c660e3a315419b5534558",
  "26e07645a768d4fe98921fbad7f07a89cbdfaef1"
};



void setup() {

  pinMode(BUTTON1,INPUT_PULLUP);
  debouncer.attach(BUTTON1);
  debouncer.interval(50);

  Serial.begin(115200);             //Serial connection
  WiFi.begin("123geheim", "");      //WiFi connection

  while (WiFi.status() != WL_CONNECTED) {  //Wait for the WiFI connection completion

    delay(500);
    Serial.println("Waiting for connection");

  }
}

String getRandomId() {
  random_id = available_ids[random(0, 11)];
  if (random_id == my_id) {
    random_id = getRandomId();
  }
  return random_id;
}

void loop() {

  debouncer.update();
  int value = debouncer.read();
  Serial.println(value);

  if (debouncer.fell()) {

    Serial.println("Button is LOW");

    if (WiFi.status() == WL_CONNECTED) { //Check WiFi connection status

      StaticJsonBuffer<300> JSONbuffer;   //Declaring static JSON buffer
      JsonObject& JSONencoder = JSONbuffer.createObject();

      JSONencoder["my_id"] = my_id; // card id
      JSONencoder["secret_key"] = secret_key; // password
      JSONencoder["other_id"] = available_ids[1];//getRandomId();


      char JSONmessageBuffer[300];
      JSONencoder.prettyPrintTo(JSONmessageBuffer, sizeof(JSONmessageBuffer));
      Serial.println(JSONmessageBuffer);

      HTTPClient http;    //Declare object of class HTTPClient

      http.begin("http://www.rhizomaticmachines.com/api/v1/intercourse");      //Specify request destination
      http.addHeader("Content-Type", "application/json");  //Specify content-type header

      int httpCode = http.POST(JSONmessageBuffer);   //Send the request
      String payload = http.getString();                                        //Get the response payload

      Serial.println(httpCode);   //Print HTTP return code
      Serial.println(payload);    //Print request response payload

      http.end();  //Close connection

    }

    delay(10000);  //Send a request every 30 seconds

  }

  else {
    //digitalWrite(LED_PIN, LOW );
    Serial.println("Button is HIGH");
  }

}
