
//your variable declarations here
UFO mary = new UFO();
Spaceship cary = new Spaceship();
boolean  aPressed, dPressed, wPressed, sPressed;
public void setup() 
{
frameRate(60);
  size(500, 500);
  noStroke();
  bob = new Star[1800];
  for (int i =0; i<bob.length; i++) {
    bob[i] = new Star();
  }
}
public void draw() 
{
background(0);
 for (int i = 0; i<bob.length; i++) {
    frameRate(60);
    bob[i].show();
  }
if(aPressed){
  cary.turn(-4);
  cary.right(true);
}
else{
  cary.right(false);
}
if(dPressed){
  cary.turn(4);
  cary.left(true);
}
else{
  cary.left(false);
}
if(wPressed){
  cary.accelerate(0.15);
  cary.boost(true);
}
else{
  cary.boost(false);
}
if(sPressed){
 cary.accelerate(-0.15);
 
}


  
  cary.move();
  cary.show();
  mary.walk();
  mary.show();
}



public void keyPressed() {
  if (key == 'a' ||key == 'A' ) aPressed = true;
  if (key == 'd'||key == 'D') dPressed = true;
  if (key == 'w'||key == 'W') wPressed = true;
  if (key == 's'||key == 'S') sPressed = true;
  if (key == 'q'|| key == 'Q'){
      cary.hyperSpace();
  }
}
public void keyReleased() {
  
 if (key == 'a' ||key == 'A') aPressed = false;
  if (key == 'd'||key == 'D') dPressed = false;
  if (key == 'w'||key == 'W') wPressed = false;
  if (key == 's'||key == 'S') sPressed = false;
}

//public void mousePressed(){
//  if(mousePressed && mouseButton == RIGHT)
//  cary.hyperspace();
//}
