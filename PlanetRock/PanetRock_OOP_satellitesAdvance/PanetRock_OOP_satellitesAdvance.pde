ArrayList<Planet> planets = new ArrayList<Planet>();
Stars stars = new Stars(1000);


void setup() {
  size(700, 700);
  rectMode(CENTER);

  PlanetWithSatellite e = new PlanetWithSatellite("Earth", 300, 20, 1, color(0, 150, 255));
  e.addSatellite(new Planet("Moon", 50, 5, -0.1, color(155, 155, 155)));
  planets.add(e);
  planets.add(new Planet("Mars", 400, 10, 2, color(255, 0, 0)));
  planets.add(new Saturn("Saturn", 600, 30, 5, color(150, 155, 0)));
  planets.add(new Planet("Mercury", 200, 10, 0.2, color(150, 55, 0)));
  planets.add(new Planet("Venera", 240, 10, 0.5, color(150, 105, 0)));

}

void draw() {
  background(0);
  
  translate(width/2, height/2);
  stars.drawStars();


  drawSun();

  for (Planet p : planets) {
    p.drawPlanet();
  }
}

void drawSun() {
  fill(255, 255, 0);
  ellipse(0, 0, 100, 100);
}

