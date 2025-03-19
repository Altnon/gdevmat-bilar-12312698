//Newtons Law of Motion
Walker[] walkers = new Walker[10];
PVector wind = new PVector(0.15, 0);
PVector gravity = new PVector (0, -0.4);
int maxMass = 10;
void setup()
{
   size(1280,  720, P3D);
   camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
   initializeWalkers();
}

void draw()
{
  background(80);
 
  addForceToWalkers();
  
}

void initializeWalkers()
{
  for(int i = 0; i<walkers.length; i++)
  {
    
    walkers[i] = new Walker();
    walkers[i].mass = maxMass-i; 
    walkers[i].scale *= walkers[i].mass;
    walkers[i].render();
  } 
}

void addForceToWalkers()
{
  for(int i = 0; i<walkers.length; i++)
  {
    
    walkers[i].render();
    walkers[i].update();
    walkers[i].applyForce(gravity); 
    walkers[i].applyForce(wind); 
    
    walkers[i].bounceWall();
    
  } 
  
}
