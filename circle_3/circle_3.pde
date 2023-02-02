float _cx = 0.0;
float _cy = 0.0; //this is a place for the circle's position
float _cdx = 10;
float _cdy = 10;

void setup()
{
  size(800,600); //screen size
}

void draw()
{
  noStroke(); //get rid of contour lines
  fill(0,0,0,10); //paint it black
  rect(0,0,width,height);
  fill(255); //paint the circle black
  circle(_cx,_cy,40); //drawing the circle
  _cx = update(_cx,_cdx);
  _cy = update(_cy,_cdy);
  _cdx = check(_cx,_cdx,0,width);
  _cdy = check(_cy,_cdy,0,height);
}

float update(float value,float increment)
{
  return(value + increment);
}

float check(float value, float delta, float lower_limit, float upper_limit)
{
   //It is conditional execution
  if(value > upper_limit || value < lower_limit) //if the current position of the circle is...
  {
    return(delta * (-1));
  }
  return(delta);
}
