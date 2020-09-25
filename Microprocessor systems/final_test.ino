#include <ESP8266WiFi.h>
#include <BlynkSimpleEsp8266.h>

const char* auth="T2bK9VugNIzDa3n0xa7hdI54HHwzKJ9E";
const char* ssid="*****************";
const char* password = "**************";


BlynkTimer timer;

//Stabilirea pinilor de conectare
int mq2 = A0;
int data = 0;
int redLed = 4;
int greenLed = 0;
int buzzer = 13;
//Stabilirea sensibilitatii alarmei
int sensorThres = 500;

//Setup Blynk, INPUT si OUTPUT
void setup() {
  pinMode(redLed, OUTPUT);
  pinMode(greenLed, OUTPUT);
  pinMode(buzzer, OUTPUT);
  pinMode(mq2, INPUT);
  Serial.begin(115200);
  WiFi.begin(ssid,password);
  Blynk.begin(auth, ssid, password);
  timer.setInterval(1000L, getSendData);
}

void loop() {
  timer.run();
  Blynk.run();
  //Citire date senzor
  int analogSensor = analogRead(mq2);
  //Conditii pentru aprinderea LED-urilor si Buzzer
  if (analogSensor > sensorThres)
  {
    digitalWrite(redLed, HIGH);
    digitalWrite(greenLed, LOW);
    tone(buzzer, 3000, 300);
  }
  else
  {
    digitalWrite(redLed, LOW);
    digitalWrite(greenLed, HIGH);
    noTone(buzzer);
  }
  delay(100);
}
//Functie pentru activarea notificarilor Blynk
void getSendData()
{
  data = analogRead(mq2); 
  Blynk.virtualWrite(V2, data);
 
  if (data > sensorThres)
  {
    Blynk.notify("Smoke and gas detected!"); 
  }
}
