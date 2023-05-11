import processing.sound.*;


Duck d;
PImage bg;
int score;
String gameState;
SoundFile file;


void setup()
{
  size(800,600);
  bg = loadImage("bg.png");
  d = new Duck();
  score = 0;
  file = new SoundFile(this,"ragtime.wav");
  file.play();
  //gameState values: TITLE,GAME,WIN,LOSE
  gameState = "TITLE";
}

void draw()
{
  if (gameState == "TITLE")
  {
    title();
  }
  else if (gameState == "GAME")
  {
    game();
  }
  else if (gameState == "WIN")
  {
    win();
  }
  else if (gameState == "LOSE")
  {
    lose();
  }
  else 
  {
    println("something is broken with gameState");
  }
}

void resetGame()
{
  d.reset();
}


void title()
{
  background(128,215,255);
  {
  }
  // button
  fill(255,74,74);
  ellipse(400,300,150,150);
  fill(255);
  textSize(36);
  textAlign(CENTER);
  text("Click Button to Start",400,200);
  
  
  float distanceFromClick = dist(mouseX,mouseY,400,300);
  
  if(mousePressed && distanceFromClick < 50)
  {
    gameState = "GAME";
  }
}// end of title 

void game()
{
  background(bg);
  
  d.update();
  d.display();
  
  //show mouse cursor
  fill(255,0,0,100);
  ellipse(mouseX,mouseY,10,10);
  stroke(0,100);
  line(mouseX-25,mouseY,mouseX+25,mouseY);
  line(mouseX,mouseY-25,mouseX,mouseY+25);
  
  fill(255);
  textSize(48);
  textAlign(LEFT);
  text("Score: " + score, 50,50);
  
  float distanceFromClick = dist(mouseX,mouseY, d.x, d.y);
  
  if(mousePressed && distanceFromClick < 50)
  {
    file = new SoundFile(this,"duckquack.mp3");
    file.play();
    score += 1;
   // d.x = random(50,width-50);
   // d.y = random(50,height-50);
   gameState = "WIN";
  }//end of win click
  
      if(d.x>width+d.w/2)
    {
      gameState = "LOSE";
    }
}//end of the game


void win()
{
  background(247,106,167);
  // button
  fill(255,74,74);
  ellipse(400,300,150,150);
  fill(255);
  textSize(36);
  textAlign(CENTER);
  text("SHOT",400,200);
  textSize(24);
  text("how about a little faster this time...?",400,400);
  float distanceFromClick = dist(mouseX,mouseY,400,300);
  
  if(mousePressed && distanceFromClick < 50)
  {
    d.reset();
    gameState = "GAME";
  }
}//end of win

void lose()
{
  background(117,16,13);
  
  // button
  fill(255,74,74);
  ellipse(400,300,150,150);
  fill(255);
  textSize(36);
  textAlign(CENTER);
  text("Too Slow!",400,200);
  textSize(24);
  text("Click to Play Again",400,400);
  
  float distanceFromClick = dist(mouseX,mouseY,400,300);
  
  if(mousePressed && distanceFromClick < 50)
  {
    d.reset();
    d.vx = 2;
    gameState = "GAME";
  }}//end of lose
