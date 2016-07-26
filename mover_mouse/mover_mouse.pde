// An array of objects
Mover mover = new Mover();

void setup() {
  size(640,360);
  background(255);
}

void draw() {
  background(255);
  mover.update();
  mover.checkEdges();
  mover.display();
}