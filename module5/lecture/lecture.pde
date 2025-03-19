//Newtons Law of Motion
Walker walker = new Walker();
PVector wind = new PVector(0.2, 0);
PVector gravity = new PVector (0, -0.1);
void setup()
{
   size(1280,  720, P3D);
   camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
   walker.mass = 2; 
   walker.scale *= walker.mass;
}

void draw()
{
  background(80);
 
  walker.render();
  walker.update();
  walker.applyForce(wind);
  walker.applyForce(gravity);

  walker.bounceWall();
  
}

//Newtons Law of Motion
//1) An Obj at rest stays at rest , and obj in motion stays in motion (velocity)
//(in a constant speed and direction UNLEss acted upon by an unbalanced force)
//EQUILIBRIUM all forces acting upon it cancel each other out

//2)FOrce = Mass * Acceleration - 

//3 For every action there is an equal BUt opposite reaction (ALl forces are pairs) 
//acceleration is directly proportional to force  (INVERSLY proportional to mass
