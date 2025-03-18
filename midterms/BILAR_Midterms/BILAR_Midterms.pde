Walker[] objects = new Walker[100];
Walker test = new Walker();
Walker blackhole = new Walker();
void setup()
{
   size(1280,  720, P3D);
   camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
   spawnObjects();
}
void draw()
{
  objectToBlackhole();
  if(frameCount % 75 ==  0)
  {
    spawnObjects();
  }
  
}

void objectToBlackhole()
{
   background(0);
   for(int i = 0; i<objects.length; i++)
   {
      objects[i].moveTo(blackhole);
      objects[i].render();
      blackhole.blackholeRender();  
   }
     
}
void spawnObjects()
{
  blackhole = new Walker();
  for(int i = 0; i<objects.length; i++)
  {
    objects[i] = new Walker();;
    objects[i].render();
  } 
}
