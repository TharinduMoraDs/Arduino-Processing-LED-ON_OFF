import processing.serial.*; //import serial lib

Serial serialPort;

String inputText="";

void setup(){
  
size(350, 350);
 serialPort = new Serial(this, "COM9", 9600); //COM number can be changed,check Ardunio Port No
 serialPort.bufferUntil('n');
}

void serialEvent (Serial serialPort){
  
inputText = serialPort.readStringUntil('n');
}

void draw(){
  
background(0,0,0); //black color
text(inputText, 120, 120);
inputText="";

if(mousePressed && (mouseButton == LEFT)){
serialPort.write('1');
}

if (mousePressed && (mouseButton == RIGHT)){
serialPort.write('0');
}
}
