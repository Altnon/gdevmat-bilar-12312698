Walker[] walkers = new Walker[8];
int noOfWalkers = walkers.length;
PVector wind = new PVector(0.15, 0);
PVector gravity = new PVector (0, -0.4);
int maxMass = 10;
int posY = 0;


void setup()
{
   size(1280,  720, P3D);
   camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
   initializeWalkers();
}

void draw()
{
  background(255);

  addForceToWalkers();
  strokeWeight(10);
  stroke(color(0));
  line(0,Window.bottom, 0, Window.top);
  
}
void mousePressed()
{
  background(80);
  initializeWalkers();
}

void initializeWalkers()
{
  for(int i = 0; i<walkers.length; i++)
  {
    posY = 2 * (Window.windowHeight/noOfWalkers)* (i-(noOfWalkers/2));
    walkers[i] = new Walker();
    walkers[i].position = new PVector(-500, posY);
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
    float mew = 0.01; 
    float normal = 1; 
    
    if(walkers[i].position.x >= 0)
    {
      mew = 0.4;
    }
    
    float frictionMagnitude = mew * normal; 
    PVector friction = walkers[i].velocity.copy();
    friction.mult(-1); 
    friction.normalize();
    friction.mult(frictionMagnitude); 
    walkers[i].applyForce(friction);
    
    PVector acceleration = new PVector (0.2, 0.0 * walkers[i].mass);
    walkers[i].render();
    walkers[i].update();
    walkers[i].applyForce(acceleration); 
   
    
    walkers[i].bounceWall();
    
  } 
  
}
