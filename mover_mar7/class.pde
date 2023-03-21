class Mover
{
  PVector location = new PVector(0,0);
  PVector velocity = new PVector(0,0);
  PVector acceleration = new PVector(0,0);
  float topspeed = 5;
  
  Mover(float _x, float _y)
  {
    this.location.x = _x;
    this.location.y = _y;
    this.acceleration.x = -0.001;
    this.acceleration.y = -0.01;
  }
  
  void display()
  {
    fill(255);
    circle(this.location.x, this.location.y,10);
  }
  
  void update()
  {
    PVector mouse = new PVector(mouseX,mouseY);
    PVector dir1 = PVector.sub(mouse,location);
    dir1.normalize();
    dir1.rotate(radians(180));
    
    PVector dir2 = PVector.random2D();
    dir2.normalize();
    dir2.mult(3);
    
    float sliderValue = PVector.sub(mouse,location).mag()/400.0;
    if(sliderValue > 1) sliderValue = 1.0;
    PVector dir = PVector .lerp(dir1,dir2,sliderValue);
    
    this.acceleration = dir.mult(0.5);
    
    
    
    
    this.velocity.add(this.acceleration);
    this.velocity.limit(topspeed);
    this.location.add(this.velocity);
  }
  
  void check()
  {
    if(this.location.x < 0 || this.location.x > width)  this.velocity.x = this.velocity.x * (-1);
    if(this.location.y < 0 || this.location.y > height)  this.velocity.y = this.velocity.y * (-1);
    /*if(this.location.x < 0)  this.location.x = width;
    if(this.location.x > width) this.location.x = 0;
    if(this.location.y < 0) this.location.y = height;
    if(this.location.y > height) this.location.y = 0;*/
  }
}
