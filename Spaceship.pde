class Spaceship extends Floater  
{   
  
 public boolean moving, turnLeft, turnRight, hyperspace;
  public int teleport;
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
    
    public Spaceship(int x, int y){
     moving = turnLeft = turnRight = hyperspace = false;
      corners = 10;
      int[] myExes = {-8, 5, 1, 7, 16, 7, 1, 5, -8, -5};
      int[] myWhys = {-8, -6, -5, -3, 0, 3, 5, 6, 8, 0};
      xCorners = myExes;
      yCorners =myWhys;
      myColor = color(255);
      myCenterX= x;
      myCenterY = y; 
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
public void hyperSpace()
  {
    for (int i = 0; i<cary.length; i++) {
      if ((Math.random()*1)>=.5 ){
     cary[0].myCenterX = (Math.random()*500);
     cary[0].myCenterY = (Math.random()*500); 
     cary[1].myCenterX = cary[0].myCenterX+ 50;
     cary[1].myCenterY = cary[0].myCenterY ;
     cary[2].myCenterX = cary[0].myCenterX+ 100;
     cary[2].myCenterY = cary[0].myCenterY ;
     cary[3].myCenterX = cary[0].myCenterX+ 150;
     cary[3].myCenterY = cary[0].myCenterY ;
     cary[4].myCenterX = cary[0].myCenterX+ 200;
     cary[4].myCenterY = cary[0].myCenterY ;
      }
      else if ((Math.random()*1)<50){
          cary[0].myCenterX = (Math.random()*500);
     cary[0].myCenterY = (Math.random()*500); 
     cary[1].myCenterX = cary[0].myCenterX;
     cary[1].myCenterY = cary[0].myCenterY + 50;
     cary[2].myCenterX = cary[0].myCenterX;
     cary[2].myCenterY = cary[0].myCenterY + 100;
     cary[3].myCenterX = cary[0].myCenterX;
     cary[3].myCenterY = cary[0].myCenterY + 150;
     cary[4].myCenterX = cary[0].myCenterX;
     cary[4].myCenterY = cary[0].myCenterY + 200;
      cary[i].myXspeed = 0;
      cary[i].myYspeed = 0;

        
      }
      cary[i].myXspeed = 0;
      cary[i].myYspeed = 0;
    }
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
 Spaceship [] cary;


