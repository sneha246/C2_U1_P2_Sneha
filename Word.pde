class Word 
{
  int value = 0; 
  int col;
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;

  float _x; 
  float _y; 

 

  Word()
  {
    location = new PVector(0, 0);
    velocity = new PVector(random(-4, 4), random(4, 0));
    col = color(random(255), random(255), random(255)); 
    topspeed = 10;


  }

  Word(float _x, float _y)
  {
    location = new PVector(_x, _y);
    velocity = new PVector(random(-4, 4), random(4, 0));
  }

  void Draw()
  {
    if (mousePressed) 
    {
      word.add(new Word(mouseX, mouseY));
    }

    velocity.limit(topspeed);
    location.add(velocity);
   
  }

  void display() 
  {
    stroke(255);
    // strokeWeight(0);
    //  fill(200);
    // ellipse(location.x, location.y, 50, 50); 
    textAlign(CENTER);
    text("CODING!", location.x, location.y);
    textSize(20);
  }
}