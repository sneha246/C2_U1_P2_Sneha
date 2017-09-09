ArrayList <Word> word = new ArrayList <Word>(); 


float rot = 0;
PImage shiffman; 


void setup() 
{
  background(0); 
  fullScreen();
  shiffman = loadImage("shiffman.png");
}

void draw() 
{
  image(shiffman, 0, 0);

  shiffman.resize(50,50); 

  pushMatrix();
  translate(mouseX-50, mouseY-50);
  rotate(rot);
  pushMatrix();
  translate(0, 70);
  rotate(-rot);
  text("CODING IS FUN!", 0, 70);
  fill(#30CAD1);
  fill( random(255), random(255), random(255), random(255)); 
  popMatrix();
  popMatrix();
  rot+=0.3;
}