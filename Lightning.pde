void setup()
{
  size(300, 300);
  strokeWeight(1);
  background(255);
}
int startY = 150;
int startX = 175;
int endX = 0;
int endY = 150;

 int  startY2 = 150;
   int startX2 = 0;
   int endX2 = 125;
  int  endY2 = 150;
  


void draw()
{
    background(255);
    ellipse(150,150,50,50);
  int R = (int) (Math.random()*255);
  int G = (int) (Math.random()*255);
  int B = (int) (Math.random()*255);
  stroke(R, G, B);
  while (endX < 300) {
    endX = startX + (int)(Math.random()*9);
    endY = startY + (((int)(Math.random()*18)-9));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    //second lightning
    startX2 = endX2 + (int)(Math.random()*-9);
    startY2 = endY2 + (((int)(Math.random()*-18)+9));
    line(startX2,startY2,endX2,endY2);
        endY2 = startY2;
    endX2 = startX2;

  }

}
void mousePressed()
{
    startY = 150;
  startX = 175;
  endX = 0;
  endY = 150;
  //second line
  startY2 = 150;
   startX2 = 0;
   endX2 = 125;
   endY2 = 150;
}