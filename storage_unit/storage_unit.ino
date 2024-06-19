#include <HX711.h>
#include <LiquidCrystal.h>
#include <SPI.h>
#include <Ethernet.h>
#include <ArduinoHttpClient.h>
#include <ArduinoJson.h>
#include <string.h>

//Hálózathoz való csatlakozáshoz szükséges adatok
byte mac[] = {0xAA, 0xAA, 0xDD, 0xDD, 0xBB, 0xBB};
char* deviceId = "AAAADDDDBBBB";
byte ip[] = {192, 168, 100, 10};
byte gateway[] = {192, 168, 100, 1};
byte subnet[] = {255, 255, 255, 0};
String server = "192.168.100.2";

//Mérleg pinjei
const int LOADCELL_DOUT_PIN = A0;
const int LOADCELL_SCK_PIN = A1;

//LED-ek pinjei
const int YELLOW_LED = A5;
const int RED_LED = A4;

//LCD kijelző pinjei
const int RS = 8, EN = 9, D4 = 2, D5 = 3, D6 = 4, D7 = 5; 

EthernetClient client;
HttpClient http = HttpClient(client, server, 80);
HX711 scale;
LiquidCrystal lcd(RS,EN,D4,D5,D6,D7);
float measurement;
float registered_weight, actual_weight;
StaticJsonDocument<200> doc;

struct shelf{
  const char* name;
  const char* barcode;
  const char* actual_weight;
  const char* registered_weight;
} shelfData;

void ethernetSetup(byte* mac, byte* ip, byte* gateway, byte* subnet){
  Ethernet.init(10);
  Ethernet.begin(mac,ip);

  Serial.println(Ethernet.localIP());
  Serial.println(Ethernet.subnetMask());
}

void scaleSetup(int dout, int sck){
  scale.begin(dout, sck);
  scale.tare();
  scale.set_scale(460);
}

void lcdSetup(int RS, int EN, int D4, int D5, int D6, int D7){
  lcd.begin(16, 2);

  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("There are no");
  lcd.setCursor(0,1);
  lcd.print("wares here now!");
}

void ledSetup(int r, int y){
  pinMode(r, OUTPUT);
  pinMode(y, OUTPUT);
}

void sendData(String url, float m){
  url.concat(m);
  http.get(url);
  Serial.println(url);
  int statusCode = http.responseStatusCode();
}

shelf getData(String url){
  shelf sh;
  http.get(url);
  int statusCode = http.responseStatusCode();
  String response = http.responseBody();
  int startIndex = response.indexOf('[');
  int endIndex = response.indexOf(']') + 1; 

  Serial.println(response);
  Serial.println(response.substring(startIndex,endIndex+1));

  //String r = "[{'id':'9','0':'9','name':'Optic cables','1':'Optic cables','barcode':'EFD387','2':'EFD387','registered_weight':'59','3':'59','actual_weight':'0','4':'0'}]";
  DeserializationError error = deserializeJson(doc, response);

  if (error) {
      Serial.print(F("deserializeJson() failed: "));
      Serial.println(error.f_str());
      return;
  }
  sh.name = doc["name"];
  sh.barcode = doc["barcode"];
  sh.actual_weight = doc["actual_weight"];
  sh.registered_weight = doc["registered_weight"];

  return sh;
}

void setLEDs(float m, float r, float a){
  if(m < r + 1 && m > r - 1 && r == a){
    analogWrite(RED_LED,0);
    analogWrite(YELLOW_LED,0);
  }else if(r==a){
    analogWrite(RED_LED,255);
    analogWrite(YELLOW_LED,0);
  }

  if(r!=a){
    analogWrite(YELLOW_LED,255);
    analogWrite(RED_LED,0);
  }
}

void setScreen(String s1, String s2){
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print(s1);
  lcd.setCursor(0,1);
  lcd.print(s2);

  Serial.println(printf("New LCD message %s%s",s1,s2));
}

void setup() {
  Serial.begin(9600);
  ethernetSetup(mac, ip, gateway, subnet);
  scaleSetup(LOADCELL_DOUT_PIN, LOADCELL_SCK_PIN);
  lcdSetup(RS,EN,D4,D5,D6,D7);
  ledSetup(RED_LED, YELLOW_LED);
}

void loop() {
  shelfData = getData("/storage/api?data&device=AAAADDDDBBBB");
  measurement = scale.get_units(5);
  sendData("/storage/api?device=AAAADDDDBBBB&measurement=",measurement);
  registered_weight = 58.5;
  actual_weight = 58.5;

  setLEDs(measurement,registered_weight,actual_weight);
  setScreen("64GB USB drives","KLE783");

  Serial.println(measurement);
  delay(1000);
}
