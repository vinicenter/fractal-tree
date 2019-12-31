class Branch{
  public PVector begin;
  public PVector end;
  public boolean finished;
  
  Branch(PVector begin, PVector end){
    this.begin = begin;
    this.end = end;
  }
  
  void show(){
    stroke(t.btr, t.btg, t.btb);
    strokeWeight(1.7);
    line(begin.x, begin.y, end.x, end.y);
  }
  
  Branch branchA(){
    PVector dir = PVector.sub(end, begin);
    dir.rotate(PI / t.rb / t.branchA);
    dir.mult(t.rt);
    PVector newEnd = PVector.add(end, dir);
    Branch b = new Branch(end, newEnd);
    return b;
  }
  
  Branch branchB(){
    PVector dir = PVector.sub(end, begin);
    dir.rotate(-PI / t.rb / t.branchB);
    dir.mult(t.rt);
    PVector newEnd = PVector.add(end, dir);
    Branch b = new Branch(end, newEnd);
    return b;
  }
}
