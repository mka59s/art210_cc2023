int nMover = 1000;
Mover[] m = new Mover[nMover];

void setup()
{
  size(1200,900);
  for( int i = 0; i < nMover; i = i + 1)
  {
    m[i] = new Mover(width/2,height/2);
  }
}

void draw()
{
  noStroke();
  fill(0,0,0,10);
  rect(0,0,width,height);
  fill(255);
  for(int i = 0; i < nMover; i = i + 1)
   {
    m[i].display();
    m[i].update();
    m[i].check();
   }
}
