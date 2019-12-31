class Sky {

  Star[] stars = new Star[800];
  
  Sky() {
    for(int i = 0; i < stars.length; i ++) {
        Star star = new Star(new PVector(random(width), random(height)));
        
        stars[i] = star;
    }
  }
 
  void show() {
    for(Star star : stars) star.show();
  }
}

class Star {
  
  PVector p;
  
  Star(PVector p) {
    this.p = p;
  }
  
  void show() {
    fill(255);
    noStroke();
    float s = 1.5;
    ellipse(p.x, p.y, s, s);
  }
}
