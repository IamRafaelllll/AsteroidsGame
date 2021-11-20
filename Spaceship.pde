class Spaceship extends Floater  
{   
  
  boolean moving, turnLeft, turnRight, hyperspace;
  int teleport;
    public Spaceship(){
     moving = turnLeft = turnRight = hyperspace = false;
      corners = 10;
      int[] myExes = {-8, 5, 1, 7, 16, 7, 1, 5, -8, -5};
      int[] myWhys = {-8, -6, -5, -3, 0, 3, 5, 6, 8, 0};
      xCorners = myExes;
      yCorners =myWhys;
      myColor = color(255);
      myCenterX= myCenterY = 250; 
      myXspeed= 0;
      myYspeed = 0;
      myPointDirection = 0;
    }
      public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  public double getDirection(){
    return myPointDirection;
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
   public void hyperspace()
 {
   myCenterX = (Math.random() *700);
   myCenterY = (Math.random()*700);
   myXspeed= 0;
   myYspeed = 0;
 }

public void show(){
 
  stroke(myColor);
  translate((float)myCenterX, (float)myCenterY);
  float dRadians = (float)(myPointDirection*(Math.PI/180));
  rotate(dRadians);
   //draw the polygon
    beginShape();
    for (int cor = 0; cor < corners; cor++){
      vertex(xCorners[cor], yCorners[cor]);
    }
    endShape(CLOSE);
    if(moving){
      stroke(255,255,255);
      strokeWeight(3);
      
      line(-4, 0, -20, 0);
      line(-4, 3, -20, 7);
      line(-4, -3, -20, -7);
      strokeWeight(1);
      }

    
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
  public void boost(boolean correct) {
    moving = correct;
  }
  public void left(boolean correct) {
    turnLeft = correct;
  }
  public void right(boolean correct) {
    turnRight = correct;
  }
  public void stop(){
    teleport = 60;
  }


}
