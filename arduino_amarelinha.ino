

const int buttonPin = 2;
const int ledPin =  13;
int buttonState = 0; 
void setup() {
 pinMode(ledPin, OUTPUT);
 // initialize the pushbutton pin as an input:
 pinMode(buttonPin, INPUT);
 Serial.begin(9600);
 }


void loop() {
  buttonState = digitalRead(buttonPin);
  if (buttonState == HIGH) {
    // turn LED on:
    digitalWrite(ledPin, HIGH);
    Serial.print(1); 
  } else {
    // turn LED off:
    digitalWrite(ledPin, LOW);
    Serial.print(0);  
  }

  
}
