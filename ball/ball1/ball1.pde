int x=0;
int y=0;
int dirX=1;
int dirY=1;

void setup(){
  size(640,320);
  noStroke();
}

void draw(){
  background(255,255,0);
  
  if(x>width){
    dirX=-1;
  }
  
  if(x<0){
    dirX=1;
  }

  if(y>height){
    dirY=-1;
  }
  
  if(y<0){
    dirY=1;
  }
      
  
  x=x+1*dirX;
  y=y+1*dirY;
 
  fill(0,0,255);
  ellipse(x,y,50,50);
 
 
}
