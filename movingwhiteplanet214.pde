class planet
{
  float speed = 1.0;
  float angle = 0.0;
  float dist = 100.0;
  float size = 10.0;
  color col = color(255,255,255);
  
  void update()
  {
    this.angle = this.angle + this.speed;
  }

void draw()
  {
   pushMatrix();
    rotate(radians(this.angle));
    translate(0,this.dist);
    fill(this.col); //paint the circle white
    circle(0,0,this.size); //drawing the circle
   popMatrix();
  }
}
planet first = new planet();

void setup()
{
  size(1200,800);
}
void draw()
{
  noStroke(); //get rid of contour lines
  fill(0,0,0,5); //paint it black
  rect(0,0,width,height);
  translate(width/2,height/2);
  
  first.draw();
  first.update();

}
