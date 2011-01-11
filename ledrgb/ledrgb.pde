// Pinos Saida
int greenPin = 9; // conectado ao led verde no pino 09
int bluePin = 10; // conectado ao led azul no pino 10
int redPin = 11; // conectado ao led vermelho no pino

// Variaveis do Programa
int wait = 500; // 500 ms menor valor = transicoes rapidas
int i ;

void setup()
{
pinMode(redPin, OUTPUT); // configura os pinos como saida
pinMode(greenPin, OUTPUT);
pinMode(bluePin, OUTPUT);
i = 1 ;
}

void loop()
{
switch (i) {
case 1: // Vermelho
ativaRgb(255,0,0) ;
break;

case 2: // Verde
ativaRgb(0,255,0) ;
break;

case 3: // Azul
ativaRgb(0,0,255) ;
break;

case 4: // Amarelo
ativaRgb(255,255,0);
break;

case 5: // Cyano
ativaRgb(0,255,255) ;
break;

case 6: // Magenta
ativaRgb(255,0,255) ;
break;

case 7: // Branco ( todos os leds acessos)
ativaRgb(255,255,255);
break;
}

delay(wait) ;
i=i+1 ;

if( i > 7)
i= 1;
}

void ativaRgb(int redVal,int greenVal, int blueVal)
{
analogWrite(redPin, redVal); // Escreve o valor do PWM do led vermelho
analogWrite(greenPin, greenVal); // Escreve o valor do PWM do led verde
analogWrite(bluePin, blueVal); // Escreve o valor do PWM do led azul
}
