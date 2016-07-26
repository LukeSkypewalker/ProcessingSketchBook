float angle=0;

void setup(){
  size(800,800);
}

void draw(){
  background(0);
  translate(width/2,height/2);
  
  fill(255,255,0);
  ellipse(0, 0,100,100);
  
  noFill();
  stroke(128);
  ellipse(0, 0,600,600);
  
  pushMatrix();
  
  angle+=PI/1800;
  rotate(angle);
  translate(300,0);
  fill(0,0,255);
  ellipse(0, 0, 100, 100);
  
  rotate(-angle);
  arc(0,0,200, 20, -1, PI+1,OPEN);
  
  popMatrix();
}