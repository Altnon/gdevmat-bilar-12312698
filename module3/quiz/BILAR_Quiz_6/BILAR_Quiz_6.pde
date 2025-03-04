void setup()
{
  size(1080,  720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}
PVector mousePos()
{
   float x = mouseX - Window.widthPx/2;
   float y = -(mouseY - Window.heightPx/2);
   
   return new PVector(x, y);
}
void draw()
{
 background(130);
  color redGlow = color(255, 0, 0);
  color whiteGlow = color(255);
  
  PVector mouse = mousePos();
  
  //Lightsaber 
  mouse.normalize().mult(500);
  strokeWeight(15);
  stroke(redGlow, 80);
  line(0,0, mouse.x, mouse.y); 
  
  strokeWeight(5);
  stroke(whiteGlow);
  line(0,0, mouse.x, mouse.y); 
   
  mouse.normalize().mult(-500);
  strokeWeight(15);
  stroke(redGlow, 80);
  line(0,0, mouse.x, mouse.y); 
  
  strokeWeight(5);
  stroke(whiteGlow);
  line(0,0, mouse.x, mouse.y); 
  
  //Handle
  mouse.normalize().mult(100);
  strokeWeight(10); 
  stroke(0); 
  line(0,0, mouse.x, mouse.y); 
 
  mouse.normalize().mult(-100);
  strokeWeight(10); 
  stroke(0); 
  line(0,0, mouse.x, mouse.y);  
  
  println(mouse.mag());
  
}
