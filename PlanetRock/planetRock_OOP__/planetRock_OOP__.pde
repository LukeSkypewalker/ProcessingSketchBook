float angle=0;
float angleMars=0;
float angleSaturn=0;
ArrayList<Planet> planets = new ArrayList<Planet>();


void setup() {
  size(700, 700);
  rectMode(CENTER);

  Planet e = new Planet(300, 20, 1, color(0, 0, 255));
  e.addSatellite(new Planet(50, 5, -10, color(155,155,155)));
  planets.add(e);
  planets.add(new Planet(400, 20, 5, color(255, 0, 0)));
  
}

void draw() {
  background(0);
  translate(width/2, height/2);

  drawSun();

  for (Planet p : planets) {
    p.drawPlanet();
  }
}



void drawSaturn() {
  pushMatrix();

  noFill(); 
  stroke(128);
  ellipse(0, 0, 600, 600); 

  angleSaturn+=PI/(30*60*6);
  rotate(angleSaturn);
  fill(200, 160, 0);
  ellipse(300, 0, 20, 20);

  popMatrix();
}



void drawSun() {
  fill(255, 255, 0);
  ellipse(0, 0, 100, 100);
}

void drawEarth() {
  pushMatrix();

  noFill();
  stroke(128); 
  ellipse(0, 0, 300, 300);
  angle+=PI/1800;
  rotate(angle);
  fill(0, 0, 255);
  ellipse(150, 0, 20, 20);

  translate(150, 0);
  noFill();
  ellipse(0, 0, 60, 60);
  rotate(-angle*10);
  fill(0, 255, 0);
  ellipse(30, 0, 10, 10);

  popMatrix();
}


void drawMars() {
  pushMatrix();

  noFill(); 
  stroke(128);
  ellipse(0, 0, 400, 400); 

  angleMars+=PI/3600;
  rotate(angleMars);
  fill(255, 0, 0);
  ellipse(200, 0, 20, 20);

  popMatrix();
}

