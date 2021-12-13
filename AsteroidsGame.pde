ArrayList <Asteroid> asteroids= new ArrayList <Asteroid>();;
ArrayList <Bullet> bullets = new ArrayList<Bullet>();
ArrayList<Subasteroid>subA = new ArrayList<Subasteroid>();
ArrayList<UFO> ufo = new ArrayList<UFO>();
int hp = 100;
int score = 0;
boolean W = false;
boolean fatL = false;
int aste = 0;
int time =3;
//UFO mary = new UFO();
Spaceship cary = new Spaceship();
boolean  aPressed, dPressed, wPressed, sPressed, ePressed;

public void setup()
{
  frameRate(60);
  size(500, 500);
  
  for (int i =0; i<bullets.size(); i++) {
    bullets.add(new Bullet(cary));
  }
  //noStroke();
//for (int i =0; i<20; i++) {

//    subA.add(new Subasteroid());
//  }
  bob = new Star[1000];

  for (int i =0; i<bob.length; i++) {
    bob[i] = new Star();
  }
  for (int i =0; i<20; i++) {

    asteroids.add(new Asteroid());
   //asteroids.add(new Subasteroid());
   
  }

  for (int i =0; i<2; i++) {
    ufo.add(new UFO());
  }
}
public void draw()
{
  background(0);

  if (fatL == true && W == false)
  {


    fill(255);

    textSize(40);
    text("YOU LOST!", 150, 250);
    textSize(30);
    text("Score: " + score, 200, 350);
  } else if (W == true)
  {

    fill(255);

    textSize(40);

    text("You win!", 170, 250);
    textSize(30);
    text("Score: " + score, 175, 350);
  } else {
    //background(0);
  }





  for (int i =0; i<bullets.size(); i++) {
    bullets.get(i).show();
  }
  for (int i =0; i<bullets.size(); i++) {
    bullets.get(i).move();
  }
  for (int i =0; i<ufo.size(); i++) {
    ufo.get(i).show();
  }
  for (int i =0; i<ufo.size(); i++) {
    ufo.get(i).walk();
  }



  if (aPressed) {
    cary.turn(-4);
    cary.right(true);
  } else {
    cary.right(false);
  }

  if (dPressed) {
    cary.turn(4);
    cary.left(true);
  } else {
    cary.left(false);
  }
  if (wPressed) {
    cary.accelerate(0.15);
    cary.boost(true);
  } else {
    cary.boost(false);
  }
  if (sPressed) {
    cary.accelerate(-0.15);
  }

  //if (ePressed){
  // bullets.add (new Bullet(cary));
  //}





  for (int i =0; i<asteroids.size(); i++) {
    asteroids.get(i).show();
    asteroids.get(i).move();
  }
  // for (int i =0; i<subA.size(); i++) {
  //  subA.get(i).show();
  //  subA.get(i).move();
  //}



  for (int i = 0; i<bob.length; i++) {
    frameRate(60);
    bob[i].show();
    bob[i].move();
  }
  //mary.walk();
  //mary.show();
  cary.move();
  cary.show();

aste = asteroids.size();
//System.out.println(subA.size());

  for (int i=0; i<asteroids.size(); i++) {
    if (dist((float)cary.getX(), (float)cary.getY(), (float)asteroids.get(i).getAsteroidX(), (float)asteroids.get(i).getAsteroidY())<25) {
      hp = hp-3;
      asteroids.remove(i);
    }
  }
boolean asteroidcol = false;
  for (int j=0; j<asteroids.size(); j++) {
    
    double oriX = asteroids.get(j).getAsteroidX();
    double oriY = asteroids.get(j).getAsteroidY();
    for (int i=0; i<bullets.size(); i++) {
      if (dist((float)asteroids.get(j).getAsteroidX(), (float)asteroids.get(j).getAsteroidY(), (float)bullets.get(i).checkImpX(), (float)bullets.get(i).checkImpY())<25) {
        score = score+(int)(Math.random()*37);
        asteroids.remove(j);
        bullets.remove(i);
        fill(255);
        asteroidcol =true;
        break;
      }
    }
   if (asteroidcol==true) {
      //asteroids.remove(i);
      asteroids.add(new Subasteroid(20, oriX + 5, oriY));
      asteroids.add(new Subasteroid(20, oriX - 5, oriY));
      asteroidcol =false;
    }
    
    
    //ADD COLLISON
  }
  
  for (int p=0; p<subA.size();p++){
     if (dist((float)subA.get(p).getsAsteroidX(), (float)subA.get(p).getsAsteroidY(), (float)cary.getY(), (float)cary.getX())<25){
       hp = hp-3;
      subA.remove(p);
     }
    }
  
  for (int i=0; i<subA.size();i++){
   for (int k=0; k<bullets.size();k++){
     if(dist((float)subA.get(i).getsAsteroidX(), (float)subA.get(i).getsAsteroidY(), (float)bullets.get(k).checkImpX(), (float)bullets.get(k).checkImpY())<25){
       score = score+(int)(Math.random()*37);
       subA.remove(i);
        bullets.remove(k);
        break;
   }
   }
  }
  
  
  for (int i=0; i<ufo.size(); i++) {
    for (int n=0; n<bullets.size(); n++) {
      if (dist((float)bullets.get(n).checkImpX(), (float)bullets.get(n).checkImpY(), (float)ufo.get(i).getUFOX(), (float)ufo.get(i).getUFOY())<25) {
        ufo.remove(i);
        score = score+100;
        break;
      }
    }
  }

  fill(255);
  textSize(15);
  
  text("Score: " + score, 10, 30);
  int textColor;
  int asteColor =color(0, 255, 0);;
  if (hp >50) {
    textColor = color(0, 255, 0);
  } else if (hp>=25) {
    textColor = color(255, 255, 0);
  } else {
    textColor = color(255, 0, 0);
  }
  if (hp<0) {
    text("man, how do you even get a NEGATIVE number? that's embarrasing", 10, 100);
  }


if (asteroids.size()<30){
  asteColor = color(0, 255, 0);
}
else if (asteroids.size()>=35){
  asteColor = color(255, 255, 0);
}
else if (asteroids.size()>=45){
   asteColor = color(255, 0, 0);
}
  fill(textColor);
  text("HP : " + hp, 10, 50);
  fill(asteColor);
  text("# of Asteroids: " + aste, 10,75);
  if (hp<=0) {
    fatL = true;
  }
  if (asteroids.size() ==0 && ufo.size()==0 && subA.size() ==0) {
    W =true;
  }
}



public void keyPressed() {
  if (key == 'e' || key == 'E') {
    bullets.add (new Bullet(cary));
  }
  if (key == 'a' ||key == 'A' ) aPressed = true;
  if (key == 'd'||key == 'D') dPressed = true;
  if (key == 'w'||key == 'W') wPressed = true;
  if (key == 's'||key == 'S') sPressed = true;
  if (key == 'q'|| key == 'Q') {

    cary.hyperSpace();
  }
}
public void keyReleased() {
  if (key == 'e' || key == 'E') ePressed=false;
  if (key == 'a' ||key == 'A') aPressed = false;
  if (key == 'd'||key == 'D') dPressed = false;
  if (key == 'w'||key == 'W') wPressed = false;
  if (key == 's'||key == 'S') sPressed = false;
}
