Walker[] objects = new Walker[100];
public PVector mousePos = new PVector();
void setup()
{
   size(1280,  720, P3D);
   camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
   spawnObjects();
}

void draw()
{
 
   background(0);
   for(int i = 0; i<objects.length; i++)
   {
     mousePos = new PVector( mouseX - Window.widthPx/2, -(mouseY - Window.heightPx/2));
     objects[i].update(mousePos);
     objects[i].render(); 
   }
    
}
void spawnObjects()
{
  for(int i = 0; i<objects.length; i++)
  {
    objects[i] = new Walker();;
    objects[i].render();
  } 
}
