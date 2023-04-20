PFont myfont;

void setup()
{
  size(1000,800);
  myfont = createFont("elite.ttf",1);
}

void draw()
{
  fill(0);
  textSize(128);
  line(width/2,0,width/2,height);
  textAlign(CENTER);
  text("hello",width/2,height/2);
  fill(255,0,0);
  circle(width/2,height/2,30);
}
