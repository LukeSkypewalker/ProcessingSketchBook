class Planet {
  //  static int speed = 30*60;
  int orbita;
  int diametr;
  int angel;
  float currentAngel=0;
  color rgb;
  //ArrayList<Planet> satelights;

  public Planet(int o, int d, int period, color col) {
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

    popMatrix();
  }
}

