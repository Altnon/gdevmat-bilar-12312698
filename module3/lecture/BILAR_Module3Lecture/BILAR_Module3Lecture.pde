void setup()
{
  size(1280,  720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}
//Long way - u need 4 variables to make a bouncing ball 
//float x, y;
//float xSpeed = 5; 
//float ySpeed = 8;

PVector position = new PVector(); //PVector has x & y & z if (3D)  
PVector speed = new PVector(5, 8); 
void draw()
{
  //Refresh Screen with White
  background(255); 
 
  //Speed 
  position.add(speed); 
  
  //Bounce off walls
  if((position.x>Window.right) || (position.x< Window.left))
  {
    speed.x *= -1;
  }
  
  if((position.y>Window.top) || (position.y< Window.bottom))
  {
    speed.y *= -1;
  }
  
  //Render
  fill(182, 52, 100); 
  circle(position.x, position.y, 50);
  
}
