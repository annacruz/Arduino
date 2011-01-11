int redPin = 13;
int bluePin = 3;
int buzzerPin = 4;

void setup(){
  pinMode(buzzerPin, OUTPUT);
  pinMode(redPin, OUTPUT);
  pinMode(bluePin, OUTPUT);
}

void loop(){
 digitalWrite(bluePin, HIGH);
 digitalWrite(redPin, LOW);
 tone(buzzerPin, 440);
 delay(1000);
 digitalWrite(bluePin, LOW);
 digitalWrite(redPin,HIGH);
 tone(buzzerPin, 600);
 delay(1000);
 
  
  
}
