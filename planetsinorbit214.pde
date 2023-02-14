
planet sun = new planet();
planet mercury = new planet();
planet venus = new planet();
planet earth = new planet();
planet mars = new planet();
planet jupiter = new planet();
planet saturn = new planet();
planet uranus = new planet();
planet neptune = new planet();
planet pluto = new planet();

void setup()
{
  size(1200,800);
  sun.dist = 0;
  sun.size = 40;
  sun.col = color(255,255,0);
  mercury.dist = 57.9;
  mercury.speed = 4.74;
  venus.dist = 108.2;
  venus.speed = 3.5;
  earth.dist = 149.6;
  earth.speed = 2.98;
  mars.dist = 228.0;
  mars.speed = 2.41;
  jupiter.dist = 778.5;
  jupiter.speed = 1.31;
  saturn.dist = 1432.0;
  saturn.speed = 0.97;
  uranus.dist = 2867.0;
  uranus.speed = 0.68;
  neptune.dist = 4515.0;
  neptune.speed = 0.54;
  pluto.dist = 5906.4;
  pluto.speed = 0.47;
  
}

void draw()
{
  noStroke(); //get rid of contour lines
  fill(0,0,0,5); //paint it black
  rect(0,0,width,height);
  translate(width/2,height/2);
  scale(0.1);
  
  sun.draw();
  mercury.draw();
  venus.draw();
  earth.draw();
  mars.draw();
  jupiter.draw();
  saturn.draw();
  uranus.draw();
  neptune.draw();
  pluto.draw();
  sun.update();
  mercury.update();
  venus.update(); 
  earth.update();
  mars.update();
  jupiter.update();
  saturn.update();
  uranus.update();
  neptune.update();
  pluto.update();
  
} 
