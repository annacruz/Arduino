// Pinos Saida
int greenPin = 9; // conectado ao led verde no pino 09
int bluePin = 10; // conectado ao led azul no pino 10
int redPin = 11; // conectado ao led vermelho no pino

//Pinos de Entrada
int potPin = A3;
// Variaveis do Programa
int wait = 500; // 500 ms menor valor = transicoes rapidas

void setup()
{
pinMode(redPin, OUTPUT); // configura os pinos como saida
pinMode(greenPin, OUTPUT);
pinMode(bluePin, OUTPUT);

}

void loop()
{
int sensorValue = analogRead(potPin);
int redValue = (sensorValue/4 - 50);
int greenValue = (sensorValue/4 -100);
int blueValue = (sensorValue/4);
ativaRgb(redValue,greenValue,blueValue);

delay(200);

}

void ativaRgb(int redVal,int greenVal, int blueVal)
{
analogWrite(redPin, redVal); // Escreve o valor do PWM do led vermelho
analogWrite(greenPin, greenVal); // Escreve o valor do PWM do led verde
analogWrite(bluePin, blueVal); // Escreve o valor do PWM do led azul
}
