class Asteroid extends Floater {
  private int rot;
  private double size;
  private int type =1;
  public Asteroid() {
    corners =6;
    //    xCorners = new int [corners];
    //yCorners = new int [corners];
    xCorners = new int[] {6, 15, 9, -6, -9, -3};
    yCorners = new int []{9, 0, -6, -6, 0, 9};

    if (corners ==6) {
      for (int i=0; i<corners; i++) {
        xCorners[i] = (int)(xCorners[i]*((Math.random()*2)));
        yCorners[i] = (int)(yCorners[i]*((Math.random()*2)));
      }
    }
    rot = (int)(Math.random()*9)-4;
    int temp = (int)(Math.random()*3);
    myColor = color(75,75,75);
    size = 30;
    myCenterX= (Math.random()*500);
    myCenterY = (Math.random()*500);
    myXspeed=1;
    myYspeed=1;
    myPointDirection =0;
  }
  public Asteroid (double multi, double x, double y) {
    size = multi;
    int[] corX = {2, 5, 3, -2, -3, -1};
    int [] corY = {3, 0, -2, -2, 0, 3};
    rot = (int)(Math.random()*9)-4;
    int temp = (int)(Math.random()*3);
    myPointDirection = 0;
    corners = 6;
    xCorners = new int [corners];
    yCorners = new int [corners];
    //if (corners ==6){
    //  for (int i=0; i<corners;i++){
    //    xCorners[i] = (int)(corX[i]*((Math.random()*7)+.25));
    //    yCorners[i] =(int)(corY[i]*((Math.random()*7)+.25));
    //  }
    //}
  myCenterX= x +(int)(Math.random()*11)-5;
  myCenterY= y +(Math.random()*11)-5;
  myXspeed = (Math.random()*5)-2;
  myYspeed = (Math.random()*5)-2;
  
  myColor = color(75,75,75);  
  }
  
  public void move(){
  
   super.move();
   myPointDirection += rot;
  
  }
  public double getAsteroidX(){
    return myCenterX;
  }
  public double getAsteroidY(){
   return myCenterY; 
  }
  public boolean Sizing(){
   return size>=1; 
  }
}



