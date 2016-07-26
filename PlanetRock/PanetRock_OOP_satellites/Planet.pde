class Planet {
  final int speed = 30*60;
  String name;
  int orbita;
  int diametr;
  float angle;
  float currentAngle=0;
  color rgb;
  ArrayList<Planet> satellits=new ArrayList<Planet>();

  public Planet(String name, int o, int d, float period, color col) {
    orbita= o;
    diametr =d;
    angle=PI/(speed*period);
    rgb = col;
  }

  void drawPlanet() {
    pushMatrix();

    noFill(); 
    stroke(128);
    ellipse(0, 0, orbita, orbita); 
    rotate(currentAngle+=angle);
    translate(orbita/2, 0);
    fill(rgb);
    ellipse(0, 0, diametr, diametr);    

    rotate(-currentAngle);
    text("name",0,0);
    
    for (Planet s : satellits) {
      s.drawPlanet();
    }

    popMatrix();
  }

  void addSatellite(Planet p) {
    satellits.add(p);
  }
}