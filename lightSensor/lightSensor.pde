int lightInput = A3;
int valor = 0;
int ledPin = 13;
void setup(){
pinMode(lightInput, INPUT);
pinMode(ledPin, OUTPUT);
Serial.begin(9600);
}
void loop(){
valor = analogRead(lightInput);
if (valor >  600) {
  digitalWrite(ledPin, HIGH);
} else {
  digitalWrite(ledPin,LOW);
}
}
