void setup()
{
  size(600,400);
  strokeWeight(5);
  background(165, 70, 70);
}
int startX = 0;
int startY = 150; 
int endX = 0;
int endY =150;

void draw()
{
  (int)(Math.random()*2);
  if((int)(Math.random()*2) == 0 )
    stroke(0);
  else 
    stroke(255);
}

  while (endY > 400) 
  {
    endX = startX + (int)(Math.random()*10);
    endY = startY + (int)(Math.random()*18-9);
    line(startX, startY, endX, endY);
  }
void mousePressed()
{
  redraw();
}
