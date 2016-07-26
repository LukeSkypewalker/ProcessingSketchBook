int x=50,y=50;
int dirX=1;
int dirY=1;

void setup() {
  size(640, 360);
}

void draw() {
  background(0,0,0);
  
  if (x >width-50) {
    dirX=-1;
  }   
  if (x <50) {
    dirX=1;
  }   
  if (y >height-50) {
    dirY=-1;
  }
  if (y <50) {
    dirY=1;
  }
  x=x+1*dirX;
  y=y+1*dirY;
  ellipse(x,y,100,100);
  
}

