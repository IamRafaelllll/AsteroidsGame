
class Subasteroid extends Asteroid {
  private int rot;
  private double size;
  private int type =0;
  public Subasteroid() {
    corners =6;
    //    xCorners = new int [corners];
    //yCorners = new int [corners];
    xCorners = new int[] {3, 7, 4, -3, -4, -1};
    yCorners = new int []{6, 0, -3, -3, 0, 4};

    if (corners ==6) {
      for (int i=0; i<corners; i++) {
        xCorners[i] = (int)(xCorners[i]*((Math.random()*2)));
        yCorners[i] = (int)(yCorners[i]*((Math.random()*2)));
      }
    }
    rot = (int)(Math.random()*9)-4;
    int temp = (int)(Math.random()*3);
    myColor = color(75, 75, 75);
    size = 0.5;
    myCenterX= (Math.random()*500);
    myCenterY = (Math.random()*500);
    myXspeed=10;
    myYspeed=10;
    myPointDirection =0;
  }
  public Subasteroid (double multi, double x, double y) {
    size = multi;
    xCorners = new int[] {3, 7, 4, -3, -4, -1};
    yCorners = new int[]{6, 0, -3, -3, 0, 4};
    rot = (int)(Math.random()*9)-4;
    int temp = (int)(Math.random()*3);
    myPointDirection = 0;
    corners = 6;
    //xCorners = new int [corners];
    //yCorners = new int [corners];
    if (corners ==6){
      for (int i=0; i<corners;i++){
        xCorners[i] = (int)(xCorners[i]*((Math.random()*2)+.25));
        yCorners[i] =(int)(yCorners[i]*((Math.random()*2)+.25));
      }
    }
    myCenterX= x +(int)(Math.random()*11)-5;
    myCenterY= y +(Math.random()*11)-5;
    myXspeed = (Math.random()*5)-2;
    myYspeed = (Math.random()*5)-2;

    myColor = color(75, 75, 75);
  }

  public void move() {

    super.move();
    myPointDirection += rot;
    //System.out.println(myXspeed);
  }
  public double getsAsteroidX() {
    return myCenterX;
  }
  public double getsAsteroidY() {
    return myCenterY;
  }
  public boolean Sizing() {
    return size>=1;
  }
}
