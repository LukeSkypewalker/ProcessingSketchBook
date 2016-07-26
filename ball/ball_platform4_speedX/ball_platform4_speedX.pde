int x=0;
int y=0;
int dirX=1;
int dirY=1;
int speedX=3;
int speedY=3;
int d=50;

void setup(){
  size(400,200);
  noStroke();
  noCursor();
}

void draw(){
  background(255,200,0);
  
  rect(mouseX,height-40,100,10);
  
  if(y>=height-40-d/2 && y<height-30+d/2 && x>mouseX && x<mouseX+100){
    dirY*=-1;
  }
    

  if(x>=width-d/2) {    dirX=-1;  }
  if(x<=d/2)       {    dirX=1;   }
  if(y<=d/2)       {    dirY=1;   }
  if(y>=height-d/2){    dirY=-1;  }
      
  
  x+=speedX*dirX;
  y+=speedY*dirY;
 
  fill(0,0,255);
  ellipse(x,y,d,d);
  
}
