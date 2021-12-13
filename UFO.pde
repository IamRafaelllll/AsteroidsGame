
public class UFO extends Floater

{
  
  public int mySize;
  public UFO(){
    myCenterX= 175;
     myCenterY = 250;
     mySize = 5;
     myColor = color((int)(Math.random()*1)+180, (int)(Math.random()*1)+250, (int)(Math.random()*1)+250);
  }
  
  
 public void walk(){
    
if (myCenterX>=mouseX) {
      myCenterX= myCenterX+(int)(Math.random()*5)-4;
      fill(255);
    
    } else {
      myCenterX=myCenterX +(int)(Math.random()*7)-1;
      fill(255);
    
    }
    if (myCenterY>=mouseY) {
      myCenterY = myCenterY + (int)(Math.random()*5)-4;
      fill(255);
   
    }
    else{
      myCenterY = myCenterY+ (int)(Math.random()*7)-1;
      fill(255);
    }
    if (myCenterY<=mouseY) {
      myCenterY = myCenterY + (int)(Math.random()*5)-1;
      fill(255);
   
    }
    else{
     myCenterY = myCenterY+ (int)(Math.random()*7)-1;
      fill(255);
    }
    
   
   myCenterX =  myCenterX + (int)(Math.random()*10)-4;
    myCenterX = myCenterX +(int)(Math.random()*10)-4;
  }
 public void show(){
   stroke(0);
    fill(myColor);
    ellipse((float) myCenterX, (float)myCenterY-27, 20, 20);
    stroke(0);
    fill(255);
    ellipse((float)myCenterX, (float)myCenterY-21, 40,15); 
    fill(0,255,0);
    stroke(0);
    ellipse((float)myCenterX,(float)myCenterY-33,5,6);
     fill(myColor);
  }
  public double getUFOX(){
    return myCenterX;
  }
  public double getUFOY(){
   return myCenterY; 
  }
  public boolean Sizing3(){
   return mySize>=1; 
  }
  
}
