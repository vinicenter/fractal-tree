class Tree {
  float branchA, branchB, treeTimes, treeCount, rb, rt;
  float br, bg, bb, btr, btg, btb;

  void create() {
    PVector a = new PVector(width / 2, height - width * 0.02 );
    PVector b = new PVector(width / 2, height - width * 0.02 - height * 0.22135416);
    Branch root = new Branch(a, b); 
    tree.add(root);
  }
  
  void randomTree() {
    //input to make random trees
    rb = random(27,40);
    rt = random(0.71,0.73);
    treeTimes = random(7,10);
    
    //random tree side
    float select = random(1, 3);
    if (select >= 2) {
      branchA = random (0.2, 0.4);
      branchB = random (0.1, 0.2);
    } else {
      branchA = random (0.1, 0.2);
      branchB = random (0.2, 0.4);
    }
    
    //random colors
    br = random(80,240);
    bg = random(80,240);
    bb = random(80,240);
         
    btr = random(80,240);
    btg = random(80,240);
    btb = random(80,240);
  }

  void reset() {
    tree = new ArrayList<Branch>();
    leaves = new ArrayList<PVector>();
    treeCount = 0;
    create();
    randomTree();
  }

  void grow() {
    for (int i = tree.size() -1; i >= 0; i--) {
      Branch current = tree.get(i);
      if (!current.finished) {
        tree.add(current.branchA());
        tree.add(current.branchB());
      }
      current.finished = true;
    }
    treeCount ++;
    if (treeCount >= treeTimes) {
      for (int i = 0; i < tree.size(); i++) {
        Branch current = tree.get(i);
        if (!current.finished) {
          PVector leaf = current.end.copy();
          leaves.add(leaf);
        }
      }
    }
  }
}
