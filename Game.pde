class Game {
  void scenario() {
    //texts
    textAlign(CENTER);
    textSize(0.065*width);
    if(t.treeCount >= t.treeTimes) {
      fill(100,200,100);
      text("This is your tree!", width/2, height/7);
    } else {
      fill(200);
      text("Click to grow up", width/2, height/7);
    }
    
    //ground
    noStroke();
    fill(255);
    ellipse(width/2, height, width, 25);
  }

  void show() {
    for (int i = 0; i < tree.size(); i++) {
      tree.get(i).show();
    }
    for (int i = 0; i < leaves.size(); i++) {
      fill(t.br, t.bg, t.bb, 120);
      noStroke();
      PVector leave = leaves.get(i);
      ellipse(leave.x, leave.y, 30, 30);
    }
    scenario();
  }
}
