class Walker 
{
  PVector pos = new PVector();
  PVector speed = new PVector(10, 5); 
  
  void render()
  {
    background(255);
    color blue = color(0,0,256);
    
    fill(blue,100);
    stroke(blue);
    circle(pos.x, pos.y, 50); 
  }
  
 void moveAndBounce()
 {
   pos.add(speed); 
  
  //Bounce off walls
  if((pos.x>Window.right) || (pos.x< Window.left))
  {
    speed.x *= -1;
  }
  
  if((pos.y>Window.top) || (pos.y< Window.bottom))
  {
    speed.y *= -1;
  }
   
 }
 
  
}
