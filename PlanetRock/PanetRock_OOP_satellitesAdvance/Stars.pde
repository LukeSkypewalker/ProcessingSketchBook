class Stars{
  
  Star[] stars;
  float t=0;
  
  Stars(int n){
    stars = new Star[n];
    for (int i=0; i<n; i++){
      stars[i]=new Star();
    }
  }
  
  void drawStars(){
    stroke(255);
    pushMatrix();
    
    for (Star s:stars){
      t+=0.00000001;
      //fill(noise(t*1000)*255);
      s.drawStar();
      rotate(t);
    } 
    popMatrix();
  }
}
