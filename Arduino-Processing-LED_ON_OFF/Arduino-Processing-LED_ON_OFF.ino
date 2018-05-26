int ledone=12;
int ledtwo=13;

void setup() {
  pinMode(ledone, OUTPUT);
  pinMode(ledtwo, OUTPUT);
  Serial.begin(9600);
}

void loop() {
 if(Serial.available()>0){
  
  char ledState=Serial.read();
  if(ledState == '1'){
    digitalWrite(ledone,HIGH);
    digitalWrite(ledtwo,LOW);
    }
  
  if(ledState == '0'){
    digitalWrite(ledone,LOW);
    digitalWrite(ledtwo,HIGH);
    }
  }
  
}
