
class Bullet extends Floater {

  public Bullet(Spaceship cary) {
    myCenterX = cary.getX();
    myCenterY = cary.getY();
    myPointDirection = cary.getDirection();
    double dRadians = myPointDirection *(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + cary.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + cary.getDirectionY();
  }

  public void show() {
     strokeWeight(1);
    translate((float)myCenterX, (float)myCenterY);
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    rotate(dRadians);
    fill(255, 0, 0);
    stroke(255,0,0);
    line(0, 0, 20, 0);
    rotate(-1*dRadians);
    stroke(255);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
    fill(255, 0, 0);

  }




  public double checkImpX() {
    return myCenterX +5;
  }


  public double checkImpY() {
    return myCenterY +5;
  }
  
  
  public void move(){
   myCenterX+=myDirectionX;
   myCenterY+=myDirectionY;
  }
}
