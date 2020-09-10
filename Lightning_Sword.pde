int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
int numberTimesClicked = 0;
int diam = 10;
boolean backReset = false;

void setup()
{
  strokeWeight(2);
  background(38, 35, 35);
  size(300,300);
  rect(137.5, 100, 25, 100);
  rect(112, 200, 75, 12.5);
  rect(143, 216, 10, 35);
  triangle(138, 100, 163, 100, 150, 70);
}
void draw()
{
  frameRate(200);
  if (numberTimesClicked < 10)
  {
    stroke(237, 233, 17);
    textSize(14);
    fill(255, 255, 255);
    text("Click to charge your sword.", 20, 270);
  }
  else 
  {
    textSize(14);
    fill(255, 255, 255);
    text("The sword has been charged.", 20, 270);
    text("Prepare for battle!", 20, 290);
    
    if (!backReset)
    {
      background(38, 35, 35);
      backReset = true;
    }
    frameRate(60);
    stroke(141, 13, 161);
    fill(0, 0, 0, 10);
    rect(0, 0, 300, 300);
    ellipse(150, 150, diam, diam);
    diam += 10;
    if (diam > 400)
    {
      diam = 10;
    }
  }
  
  if (endX < 300)
  {
    endX = startX + (int)(Math.random() * 19) - 9;
    endY = startY + (int)(Math.random() * 10);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  rect(137.5, 100, 25, 100);
  rect(112, 200, 75, 13);
  rect(143, 216, 10, 35);
  triangle(138, 100, 162.5, 100, 150, 70);
}
void mousePressed()
{
  numberTimesClicked += 1;
  startX = 150;
  startY = 0;
  endX = 150;
  endY = 0;
  if (numberTimesClicked == 10)
  {
    textSize(14);
    fill(255, 255, 255);
    numberTimesClicked += 1;
  }
}

