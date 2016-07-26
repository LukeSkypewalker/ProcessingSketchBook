class Star {
  int x;
  int y;
  int size;

  Star() {
    x=(int)random(-350,350);
    y=(int)random(-350,350); 
    size=(int)random(1, 5);
  }

  void drawStar() {
    //ellipse(x, y, size, size);
    point(x,y);
  }
}

