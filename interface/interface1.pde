import processing.serial.*;

Serial port;

int width = 1200;
int height = 1000;
int boldSize = 128;

float percent = 1;
String interpretation = "";
float danger = 4;

PFont roboto128;
PFont roboto64;

void settings() {
  size(width, height);
}

void setup() {
  
  //port = new Serial(this, 9600);
  //println(port.available());
  roboto128 = loadFont("Roboto-Bold-128.vlw");
  roboto64 = loadFont("Roboto-Bold-128.vlw");
  textFont(roboto128);
  
  stroke(200,200,200, 90);
  strokeJoin(ROUND);

}

void draw() {
  if (percent >= danger) interpretation = "Risky";
  else interpretation = "Safe";
  background(20,20,20);
  textSize(boldSize * .75);
  textAlign(CENTER);
  fill(20,20,20);
  rect(0, 0, width - 1, height/3);
  rect(0, height/3, width/2 - .5, height/3 * 2);
  rect(width/2, height/3, width/2 - .5, height/3 * 2);
  fill(229, 189,53);
  text("Methane Concentration", width/2, boldSize * 1.5);
  textSize(boldSize/2);
  text("Percentage", width/4, height/3 + boldSize);
  text("Interpretation", width/4 * 3, height/3 + boldSize);
  if (percent < danger) {
    fill(15, 242, 31);
  } else {
    fill(242,60,15);
  }
  textSize(128);
  text(nf(percent, 0, 2) + "%", width/4, height/3 + boldSize * 3);
  text(interpretation, width/4 * 3, height/3 + boldSize * 3);
  percent += 0.01;
}
