int potPin = A0;
int redPin = 11;

void setup(){
  pinMode(redPin, OUTPUT);
  //Serial.begin(9600);
}
void loop(){
  int sensorValue = analogRead(potPin);
  //analogWrite(redPin, sensorValue/4);
  Serial.println(sensorValue);
}
