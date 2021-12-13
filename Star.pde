
public class Star 
{
 public double myX, myY, myAngle, mySpeed, startY, startX;
 public int myColor, mySize;
 private int rot;

 public Star() {
    myX = -50;
    myY =-50;
    mySpeed = Math.random()*10;
    myAngle = (Math.random()*2)*Math.PI;
    mySize = 1;
    
    rot = (int)(Math.random()*9)-4;
    myColor = color((int)(Math.random()*1)+180, (int)(Math.random()*1)+250, (int)(Math.random()*1)+250);
  }

 

  public void move(){
    if (myX >1000 || myY >1000 ||myX<-1000 || myY<-1000) {
      myX = myY= -10;
      myAngle = (double)((int)(Math.random()*360)+1)* (Math.PI/100);
    }
    
    
    startY = myY;
    startX = myX;
    myX += Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
  }
    
   public void show() {
    frameRate(60);
    fill(myColor);
    ellipse((float)myX, (float)myY, mySize, mySize);
  }
  
}

Star [] bob;
