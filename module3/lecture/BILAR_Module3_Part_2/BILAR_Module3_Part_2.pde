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
 
  PVector mouse = mousePos();
  mouse.normalize().mult(500);
 
  strokeWeight(5);
  stroke(255);
  line(0,0, mouse.x, mouse.y); 
  //origin, endpoint pos;
  
  println(mouse.mag() );
}
