int x=50, y=50;
int dirX=1;
int dirY=1;
int speed=5;
int d=10;

void setup() {
  size(320, 200);
}

void draw() {
  background(255, 255, 0);

  //rect(width/2-50,height/2-75,100,150);
  fill(255, 0, 0);

  line(mouseX, 150, mouseX+100, 150); 
   if (y==150 && x>=mouseX && x<=mouseX+100) {
     println("100");
     dirY*=-1;
   }   
   



  if (x >width-d/2) {
    dirX*=-1;
  }   
  if (x <d/2) {
    dirX*=-1;
  }   
  if (y >height-d/2) {
    dirY*=-1;
  }
  if (y <d/2) {
    dirY*=-1;
  }

  x=x+speed*dirX;
  y=y+speed*dirY;
  ellipse(x, y, d, d);
}

