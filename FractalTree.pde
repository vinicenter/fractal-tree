ArrayList<Branch> tree = new ArrayList<Branch>();
ArrayList<PVector> leaves = new ArrayList<PVector>();

Game g;
Tree t;
Sky s;

//Tree
PGraphics gTree;

void setup(){
  size(600,600);
  g = new Game();
  t = new Tree();
  s = new Sky();
  t.reset();
}

void draw(){
  background(41, 79, 110);
  s.show();
  g.show();
}

void mousePressed(){
  if(t.treeCount >= t.treeTimes) {
    t.reset();
  } else {
    t.grow();
  }
}
