void setup()
{//calls this function at the very first frame
  size(1280, 720, P3D); //size of the console
  camera(0,0, -(height/2.0)/tan(PI*30.0/180.0), 0, 0, 0, 0, -1, 0);//sets the x,y to the center
}

void draw()
{//calls this function every frame
   background(0);//sets the bg color
   
  // //draws a point
  //circle(0,0, 15);
  
  ////changes the thickness of the line below it (ANY line code below it)
  //strokeWeight(2); 
  
  ////declare a color variable 
  //color white = color(255,255,255); 
  ////fills it with the color
  //fill(white);
  ////all the strokes will be the color selected
  //stroke(white); 
  //line(-75, -75, 75, 75); //draws a line
  
   drawCartesianPlane(300, 300);
   drawLinearFunction();
   drawQuadraticFunction();
   drawCircle();
   
}


void drawLinearFunction()
{ //<>//
  color red = color(255,0,0);
  
  fill(red); 
  noStroke();
  for(int x = -200; x <= 200; x++)
  {
    circle(x, x+2, 5);
  }
}
void drawQuadraticFunction()
{
  color green = color(0,255,0);
  fill(green); 
  stroke(green);
  for(float x = -300; x <= 300; x+= 0.1f)
  {
    circle(x * 10, ((float)Math.pow(x, 2)+ (x * 2) -5), 5);
  }
}

void drawCircle()
{
  color blue = color(0,0,255);
  fill(blue);
  stroke(blue);
  float radius = 50;
  
  for(int x = 0; x <= 360; x++)
  {
    circle((float)Math.cos(x) * radius, (float)Math.sin(x) * radius, 5);
  }
  
}
void drawCartesianPlane(float x, float y)
{
  strokeWeight(1); //<>//
  color white = color(255,255,255);
  fill(white);
  stroke(white);
  //draw cartesian plane
  line(x, 0, -x, 0);
  line(0, y, 0, -y);
   
  //draws the marks on the cartesian plane
  for(float i = -x; i <= x; i+= 10)
  {
    line(i, -4, i, 4);
    line(-4, i, 4, i);
  }
}
