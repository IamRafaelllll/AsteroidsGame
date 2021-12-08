public class Health extends Floater
{
  private int rotSpeed;
  public Health()
  {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 10;
    yCorners[0] = -10;

    xCorners[1] = -10;
    yCorners[1] = -10;

    xCorners[2] = -10;
    yCorners[2] = 10;

    xCorners[3] = 10;
    yCorners[3] = 10;

    myCenterX = (int)(Math.random()*840)+10;
    myCenterY = (int)(Math.random()*840)+10;

    myDirectionX = 0.5;
    myDirectionY = 0.5;

    myColor = color(10, 255, 10);

    rotSpeed = 1;
    myPointDirection = (int)(Math.random()*360);
  }


  public void setX(int x) {myCenterX = x;}    
  public int getX() {return (int)myCenterX;}   
  public void setY(int y) {myCenterY = y;}    
  public int getY() {return (int)myCenterY;}
  public void setDirectionX(double x) {myDirectionX = x;}
  public double getDirectionX() {return myDirectionX;}
  public void setDirectionY(double y) {myDirectionY = y;}
  public double getDirectionY() {return myDirectionY;}
  public void setPointDirection(int degrees) {myPointDirection = degrees;}
  public double getPointDirection() {return myPointDirection;}
  public void setColor(int x) {myColor = color(x);}
  public int getColor() {return myColor;}

  public void move()
  {
    rotate(rotSpeed);
    super.move();
  }
}
