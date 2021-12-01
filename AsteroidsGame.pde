//your variable declarations here

UFO mary = new UFO();
//Spaceship cary = new Spaceship();
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
  cary = new Spaceship[5];
  for (int i =0; i<cary.length; i++){
   cary[i] = new Spaceship(250, 50*i); 
   
  }
}
public void draw() 
{
background(0);
 for (int i = 0; i<bob.length; i++) {
    frameRate(60);
    bob[i].show();
  }
  
  for (int i =0; i<cary.length; i++){
   cary[i].show(); 
  }
if(aPressed){
  for (int i = 0; i<cary.length; i++){
  cary[i].turn(-4);
  cary[i].right(true);
  
}
}
else{
   for (int i = 0; i<cary.length; i++){
  cary[i].right(false);
   }
}

if(dPressed){
   for (int i = 0; i<cary.length; i++){
  cary[i].turn(4);
  cary[i].left(true);
   }
}
else{
   for (int i = 0; i<cary.length; i++){
  cary[i].left(false);
   }
}
if(wPressed){
   for (int i = 0; i<cary.length; i++){
  cary[i].accelerate(0.15);
  cary[i].boost(true);
   }
}
else{
   for (int i = 0; i<cary.length; i++){
  cary[i].boost(false);
   }
}
if(sPressed){
   for (int i = 0; i<cary.length; i++){
 cary[i].accelerate(-0.15);
 
}
}


   for (int i = 0; i<cary.length; i++){
  cary[i].move();
  cary[i].show();
  //mary.walk();
  //mary.show();
   }
    mary.walk();
  mary.show();
}



public void keyPressed() {
  if (key == 'a' ||key == 'A' ) aPressed = true;
  if (key == 'd'||key == 'D') dPressed = true;
  if (key == 'w'||key == 'W') wPressed = true;
  if (key == 's'||key == 'S') sPressed = true;
  if (key == 'q'|| key == 'Q'){
      for (int i = 0; i<cary.length; i++){
      cary[i].hyperSpace();
      }
  }
}
public void keyReleased() {
  
 if (key == 'a' ||key == 'A') aPressed = false;
  if (key == 'd'||key == 'D') dPressed = false;
  if (key == 'w'||key == 'W') wPressed = false;
  if (key == 's'||key == 'S') sPressed = false;
}

