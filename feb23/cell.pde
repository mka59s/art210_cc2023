class Cell
{
  float d = 10.0; 
  int px = 0; 
  int py = 0; 
  int pz = 0;
  boolean isLive = false;
  boolean nextLive = false;
  int id = 0;
  
  Cell(int _px, int _py, int _pz, float _d, int _id)
  {
    this.px = _px;
    this.py = _py;
    this.pz = _pz;
    this.d = _d;
    this.id = _id;
  }
  
  void display()
  {
    if(isLive)
    {
     fill(255); 
    }
    else
    {
     fill(100); 
    }
   //noStroke();
   
   pushMatrix();
    translate(-this.d*(maxX/2),-this.d*(maxY/2),-this.d*(maxZ/2));
    translate(this.px * this.d,this.py * this.d,this.pz * this.d);
    box(this.d*0.9);
   popMatrix();
  }
  
  void click(int _id)
  {
   if(_id == this.id)
   {
    this.isLive = !this.isLive;
   }
}
