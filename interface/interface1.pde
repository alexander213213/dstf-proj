import processing.serial.*;

Serial port;

int width = 1000;
int height = 1000;

void settings() {
  size(width, height);
}

void setup() {
  
  //port = new Serial(this, 9600);
  //println(port.available());
  PFont roboto = loadFont("Roboto-Bold.ttf");

}

void draw() {
  background(42, 111, 163);
  textSize(64);
  textAlign(CENTER);
  fill(111, 169, 214);
  //while (port.available() > 0) {
  //  int inByte = port.read();
  //  println(inByte);
  //}
  rect(0, 0, width, height/2);
  rect(0, height/2, width/2, height/2);
  rect(width/2, height/2, width/2, height/2);
  fill(36, 46, 54);
  textFont(roboto);
  text("Methane", width/2, 100);
}
