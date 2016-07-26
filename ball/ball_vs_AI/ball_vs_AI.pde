int x=0;
int y=200;
int dirX=1;
int dirY=1;
int speed=3;
int d=10;
int X=0;
int Z=0;

void setup(){
  size(400,600);
  noStroke(); 
}

void draw(){
  background(255,200,0);
  
  rect(mouseX,height-40,100,10); 
  if(y>=height-40-d/2 && y<height-30+d/2 && x>mouseX && x<mouseX+100){
    dirY*=-1;
  }
   
   
  rect(x-50,30,100,10);
  if(y>=30-d/2 && y<40+d/2 && x>x-50 && x<x+50){
    dirY*=-1;
  }

  if(x>=width-d/2) {    dirX=-1;  }
  if(x<=d/2)     {    dirX=1;   }
  if(y<=d/2)     {    dirY=1;   }
  if(y>=height-d/2){    dirY=-1;  }
       
  x+=speed*dirX;
  y+=speed*dirY;
 
  fill(0,0,255);
  ellipse(x,y,d,d);
  
}

/*
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      Z-=10;
    } else if (keyCode == RIGHT) {
      Z+=10;
    }   
  }
}
*/


