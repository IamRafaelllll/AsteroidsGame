
//your variable declarations here

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
}



void keyPressed() {
  if (key == 'a') aPressed = true;
  if (key == 'd') dPressed = true;
  if (key == 'w') wPressed = true;
  if (key == 's') sPressed = true;
  if (key == 'q'){
      cary.hyperSpace();
  }
}
void keyReleased() {
  
  if (key == 'a') aPressed = false;
  if (key == 'd') dPressed = false;
  if (key == 'w') wPressed = false;
  if (key == 's') sPressed = false;
}

//public void mousePressed(){
//  if(mousePressed && mouseButton == RIGHT)
//  cary.hyperspace();
//}
