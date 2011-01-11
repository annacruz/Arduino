#include <LiquidCrystal.h>

LiquidCrystal lcd(7,8,9,10,11,12);
int tempPin = A0;
int tempc = 0;
int samples[8];
int tempMax = -100, tempMin = 100;

byte newChar[8] = {
	B00100,
	B01010,
	B00100,
	B00000,
	B00000,
	B00000,
	B00000,
	B00000
};


void setup(){
  Serial.begin(9600);
  lcd.begin(16,2);
  lcd.print("Temp sensor");
lcd.createChar(0, newChar);
}

void loop(){
lcd.setCursor(0,1);
lcd.print(temperature(),DEC);
lcd.print(" ");
lcd.write(0);
lcd.print("C");

}

int temperature(){
for(int i=0;i<=7;i++){

  samples[i] = (5.0 * analogRead(tempPin) * 100.0) /1024.0;
  tempc = tempc + samples[i];
  delay(1000);
}

tempc = tempc/8.0; // better precision
return tempc;
}
