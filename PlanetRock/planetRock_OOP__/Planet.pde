class Planet {
  //  static int speed = 30*60;
  int orbita;
  int diametr;
  float angel;
  float currentAngel=0;
  color rgb;
  ArrayList<Planet> satellits=new ArrayList<Planet>();

  public Planet(int o, int d, float period, color col) {
    orbita= o;
    diametr =d;
    angle=PI/(30*60*period);
    rgb = col;
  }

  void drawPlanet() {
    pushMatrix();

    noFill(); 
    stroke(128);
    ellipse(0, 0, orbita, orbita); 
    rotate(currentAngel+=angle);
    fill(rgb);
    ellipse(orbita/2, 0, diametr, diametr);

    for (Planet p : satellits) {
      
      p.drawPlanet();
    }

    popMatrix();
  }

  void addSatellite(Planet p) {
    satellits.add(p);
  }
}

