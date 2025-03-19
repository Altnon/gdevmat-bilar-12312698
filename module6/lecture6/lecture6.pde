Walker[] walkers = new Walker[10];
PVector wind = new PVector(0.15, 0);
PVector gravity = new PVector (0, -0.4);
int maxMass = 10;
int posX = 0;
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
    posX = 2 * (Window.windowWidth/10)* (i-5);
    walkers[i] = new Walker();
    walkers[i].position = new PVector(posX, 200);
    walkers[i].mass = maxMass-i; 
    walkers[i].scale *= walkers[i].mass;
    walkers[i].render();
  } 
}

void addForceToWalkers()
{
  for(int i = 0; i<walkers.length; i++)
  {
    //Friction = -1 * mew * N * v
    float mew = 0.1; 
    float normal = 1; 
    float frictionMagnitude = mew * normal; 
    
    PVector friction = walkers[i].velocity.copy();
    friction.mult(-1); 
    friction.normalize();
    friction.mult(frictionMagnitude); 
    walkers[i].applyForce(friction);
    PVector gravity = new PVector (0, -0.15 * walkers[i].mass);
    walkers[i].render();
    walkers[i].update();
    walkers[i].applyForce(gravity); 
    //walkers[i].applyForce(wind); 
    
    walkers[i].bounceWall();
    
  } 
  
}
