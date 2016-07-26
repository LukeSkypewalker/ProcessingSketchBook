int x;
int y;
float angle=0;
float angleMars=0;

void setup(){
  size(600,600);
  rectMode(CENTER);
}

void draw(){
  background(0);
  translate(width/2,height/2);
  
  fill(255,255,0);
  ellipse(0, 0,100,100);
  
  noFill();
  stroke(128);
  ellipse(0, 0,300,300);
  ellipse(0, 0,400,400);
  
  pushMatrix();
  
  angle+=PI/1800;
  rotate(angle);
  fill(0,0,255);
  ellipse(150, 0, 20, 20);
  
  translate(150, 0);
  noFill();
  ellipse(0, 0,60,60);
  rotate(-angle*10);
  fill(0,255,0);
  ellipse(30, 0,10,10);
  popMatrix();
  
  angleMars+=PI/3600;
  rotate(angleMars);
  fill(255,0,0);
  ellipse(200, 0, 20, 20);
  
  
  
}

