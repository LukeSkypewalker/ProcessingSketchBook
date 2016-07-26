PShape s;  // The PShape object
int x;
int [][] data = {
  {0, 0},
  {0, 4},
  {1, 3},
  {1, 2},
  {1, 2},
  {0, 1},
  {1, 1},
  {0, 1},
  {1, 1},
};

int len = 9;
int sum = 24;
int interval = 120;
int lineWidth;
int lineStart = 120;

  
void setup() {
  size(2400, 1200, P2D);
  smooth();
  frameRate(30);
  s = createArrow();
  x = lineStart;
  lineWidth = interval*17;
  shapeMode(CENTER);
  ellipseMode(CENTER); 
}


void draw() {
  background(0);
  x+=10;
  if (x > lineStart + lineWidth) x = lineStart;
  
  stroke(255, 255, 0);
  line(lineStart, 600, lineStart+lineWidth, 600);
  
  fill(0, 255, 255);
  ellipse(x, 600, 30, 30);
  
  drawGrid();
  drawArrows(x);
  drawPlayerResult(x);  
  
}


void drawArrows(int x){
  int arrowOffset = 1;
  for (int i=0; i<len; i++){   
    pushMatrix();
    
    int iPos = lineStart + (arrowOffset + data[i][1]) * interval;
    arrowOffset += data[i][1];
    translate(iPos, 500);
    
    if (abs(iPos - x) < 20){
      s.setFill(color(255,255,0));
      scale(1.3);
    } else {
      s.setFill(color(255,0,0));
    }    
    
    if (data[i][0]==0){
      rotate(PI);
    }
    shape(s);  
    
    popMatrix();
  }
}

void drawPlayerResult(int x){
  int arrowOffset = 1;
  for (int i=0; i<len; i++){   
    int iPos = lineStart + (arrowOffset + data[i][1]) * interval;
    arrowOffset += data[i][1];
    
    if (iPos > x){
      fill(128, 128, 128);      
    } else {
      fill(0, 255, 0);
    }    
    
    ellipse(iPos,660,30,30);  
  }
}



void drawGrid(){
  int arrowOffset = 1;  
  
  for (int i=0; i<interval; i++){   
    int iPos = i*interval;
    stroke(64);
    line(iPos, 400, iPos, 800);  
  }
  
  for (int i=0; i<len; i++){   
    int iPos = lineStart + (arrowOffset + data[i][1]) * interval;
    arrowOffset += data[i][1];
    
    stroke(255, 255, 0);
    line(iPos,400,iPos,800);  
  }
    
}

PShape createArrow(){
  s = createShape();
  s.beginShape();
  s.vertex(20, 0);
  s.vertex(40, 50);
  s.vertex(27, 50);
  s.vertex(27, 100);
  s.vertex(13, 100);
  s.vertex(13, 50);
  s.vertex(0, 50);
  s.endShape(CLOSE);
  return s;
}