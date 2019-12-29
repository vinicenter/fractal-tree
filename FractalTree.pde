ArrayList<Branch> tree = new ArrayList<Branch>();
ArrayList<PVector> leaves = new ArrayList<PVector>();

Game g;
Tree t;

void setup(){
  size(600,600);
  g = new Game();
  t = new Tree();
  t.reset();
}

void draw(){
  background(38, 70, 90);
  g.show();
}

void mousePressed(){
  if(t.treeCount >= t.treeTimes) {
    t.reset();
  } else {
    t.grow();
  }
}
