int startX = 0;
int startY = 150; 
int endX = 0;
int endY =150;

void setup()
{
  size(600,400);
  strokeWeight(10);
  background(165, 70, 70);
}

void draw()
{     
  int redX = ((int)(Math.random()*256));
  int greenX = ((int)(Math.random()*256));
  int blueX = ((int)(Math.random()*256));
  stroke(redX, greenX, blueX);
  
  while (endY > 400) 
  {
    endX = startX + (int)(Math.random()*10);
    endY = startY + (int)(Math.random()*18-9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
 
void mousePressed()
{
  redraw();
}
