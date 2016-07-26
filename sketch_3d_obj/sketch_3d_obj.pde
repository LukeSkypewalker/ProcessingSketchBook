PShape s;

void setup() {
  size(800, 600, P3D);
  // The file "bot.obj" must be in the data folder
  // of the current sketch to load successfully
  s = loadShape("pyramid.obj");
}

void draw() {
  background(255,200,0);
  fill(255,0,0);
  translate(width/2, height/2);
  s.rotateX(0.01);
  s.rotateY(0.01);
  s.rotateZ(0.01);
  shape(s, 0, 0);
//  delay(100);
  
}
