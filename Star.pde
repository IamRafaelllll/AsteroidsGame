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

class UFO extends Star

{
  
  
  public UFO(){
    myX= 175;
     myY = 250;
     mySize = 5;
     myColor = color((int)(Math.random()*1)+180, (int)(Math.random()*1)+250, (int)(Math.random()*1)+250);
  }
  
  
  void walk(){
    
if (myX>=mouseX) {
      myX= myX+(int)(Math.random()*5)-4;
      fill(255);
    
    } else {
      myX=myX +(int)(Math.random()*7)-1;
      fill(255);
    
    }
    if (myY>=mouseY) {
      myY = myY + (int)(Math.random()*5)-4;
      fill(255);
   
    }
    else{
      myY = myY+ (int)(Math.random()*7)-1;
      fill(255);
    }
    if (myY<=mouseY) {
      myY = myY + (int)(Math.random()*5)-1;
      fill(255);
   
    }
    else{
      myY = myY+ (int)(Math.random()*7)-1;
      fill(255);
    }
    
   
   myX = myX + (int)(Math.random()*10)-4;
    myY = myX +(int)(Math.random()*10)-4;
  }
  void show(){
    fill(myColor);
    ellipse((float)myX, (float)myY-27, 20, 20);
    fill(255);
    ellipse((float)myX, (float)myY-23, 40,15); 
  }
}
