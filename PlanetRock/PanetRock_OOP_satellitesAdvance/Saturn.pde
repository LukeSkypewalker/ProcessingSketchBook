class Saturn extends Planet {
  ArrayList<Planet> satellits=new ArrayList<Planet>();

  Saturn(String name, int o, int d, float period, color col) {
    super(name, o, d, period, col);
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
    text(name, 0, 0);

    arc(0, 0, diametr*2,diametr/4, -1, PI+1,OPEN);

    popMatrix();
  }

  void addSatellite(Planet p) {
    satellits.add(p);
  }
}