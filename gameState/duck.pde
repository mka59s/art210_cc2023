class Duck
{
  float x,y,w,h,vx,vy;
  Duck()
  
  {
    x = -w;
    y = 300;
    w = 100;
    h = 100;
    vx = random(2,7);
    vy = 0;
  }
  
  void setup()
  {

  }
  
  void draw()
  {
   
  }
  
  
  void update()
  {
    x += vx;
    y += vy;
  //  if(x>width+width/2)
  //  {
  //    x = -w/2;
 // }
  }
  
  void display()
  {
   fill(129,91,68);
    
   rect(x-50,y-15,90,50);
   
   fill(196,168,150);
   rect(x-60,y-30,40,20);
 //  rect(x-70,y-5,30,20);
 
   fill(255);
   rect(x-5,y-30,50,20);
    
   fill(255,169,77);
   rect(x+10,y+35,10,20);
   rect(x-25,y+35,10,20);
   rect(x+50,y-40,30,20);
    
   fill(30,183,120);
   rect(x-10,y-65,60,50);
    
   fill(0);
   rect(x+15,y-50,10,10);
    
    fill(255,203,238);
    rect(x+5,y-40,10,10);
    
    //fill(255,169,77);
   // rect(x+50,y-40,30,20);
    
  }
  void reset()
  {
    x = -w;
    y = random(100,height-100);
    vx = vx + 1;
  }
}
