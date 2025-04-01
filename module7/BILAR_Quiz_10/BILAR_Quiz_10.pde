Liquid ocean = new Liquid(0, -100, Window.right, Window.bottom, 0.1f); 
Walker[] walkers = new Walker[10];
int noOfWalkers = walkers.length;
int maxMass = 10;
float posX = 0;

void setup()
{
   size(1280,  720, P3D);
   camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
   initializeWalkers();
}

void draw()
{
  background(255);
  ocean.render();
  addForceToWalkers();
 
}

void initializeWalkers()
{
  for(int i = 0; i<walkers.length; i++)
  {
    posX = 1.5* (Window.windowWidth/noOfWalkers)* (i-(noOfWalkers/2));
    walkers[i] = new Walker();
    walkers[i].position = new PVector(posX, 300);
    walkers[i].mass = maxMass-i; 
    walkers[i].scale = walkers[i].mass * 10;
    walkers[i].render();
  } 
}

void addForceToWalkers()
{
  for(int i = 0; i<walkers.length; i++)
  {
    PVector wind = new PVector(0.1, 0);
    PVector gravity = new PVector (0, -0.15*walkers[i].mass);
    
    walkers[i].render();
    walkers[i].update();
    
    walkers[i].applyForce(gravity);
    //Friction = -1 * mew * N * v
    float mew = 0.1; 
    float normal = 1; 
    
    float frictionMagnitude = mew * normal; 
    PVector friction = walkers[i].velocity.copy(); 
    walkers[i].applyForce(friction.mult(-1).normalize().mult(frictionMagnitude));
   
    
    if(ocean.isCollidingWith(walkers[i]))
    {
       PVector dragForce = ocean.calculateDragForce(walkers[i]); 
       walkers[i].applyForce(dragForce);
    }
    else{
       walkers[i].applyForce(wind);   
    }
    walkers[i].bounceWall();   
  } 
}
