class Star
{
  double myX, myY, myAngle, mySpeed, startY, startX;
  int myColor, mySize;

 Star() {
    myX = (int)(Math.random()*1000);
    myY =(int)(Math.random()*1000);
    mySpeed = Math.random()*10;
    myAngle = (Math.random()*2)*Math.PI;
    mySize = 1;
    myColor = color((int)(Math.random()*1)+180, (int)(Math.random()*1)+250, (int)(Math.random()*1)+250);
  }

 
  void show() {
    frameRate(60);
    fill(myColor);
    ellipse((float)myX, (float)myY, mySize, mySize);
  }
}

Star [] bob;
