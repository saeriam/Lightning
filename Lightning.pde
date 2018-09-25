int startX = 150;
int startY = 0; 
int endX = 150;
int endY =0;

void setup()
{
  size(400,400);
  strokeWeight(1);
  background(165, 70, 70);
  noLoop();
}

void draw()
{     
  //int redX = ((int)(Math.random()*256));
  //int greenX = ((int)(Math.random()*256));
  //int blueX = ((int)(Math.random()*256));
  //stroke(redX, greenX, blueX);
  stroke(0);
  
  fadingBackground();
  while (startY < 400 && startX < 400) 
  {
    int a = (int)((Math.random()*8)+1);
    int b = (int)((Math.random()*8)-4);
    endX = startX + b;
    endY = startY + a;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void fadingBackground()
{
  fill(165, 70, 70, 40);
  strokeWeight(0);
  rect(0, 0, 400, 400);
  loop();
}
  
 
void mousePressed()
{
  startY = 0;
  redraw();
}
