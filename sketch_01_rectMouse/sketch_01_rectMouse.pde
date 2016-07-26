void setup() {
  size(640, 360);
  }

void draw() {
  background(255,128,0);
  noStroke();
  int a=30; 
  int b=40;
  rect(mouseX-a/2,mouseY-b/2,a,b);
}



