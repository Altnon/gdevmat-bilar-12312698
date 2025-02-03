float temp = 0.0;
float time = 5.0;
float amp;
float freq;
void setup()
{
  size(1280, 720, P3D); //size of the console
  camera(0,0, -(height/2.0)/tan(PI*30.0/180.0), 0, 0, 0, 0, -1, 0);
  amp = 40;
  freq = 0.1;
}

void draw()
{
   background(0);
   drawCartesianPlane(300, 300);
   drawLinearFunction();
   drawQuadraticFunction();
   drawSinWave();
  
}

void keyPressed()
{
  if(key == 'a' || keyCode == LEFT)
  {//left
    
    amp -= 5;
    freq -= 0.01;
  }
  if(key == 'd' || keyCode == RIGHT)
  {//right
    amp += 5;
    freq += 0.01;
  }
  
}

void drawLinearFunction()
{
  color purple = color(147,112,219);
  
  fill(purple); 
  noStroke();
  for(int x = -200; x <= 200; x++)
  {
    circle(x, ((-5 * x) + 30), 5);
  }
}
void drawQuadraticFunction()
{
  color yellow = color(255,255,0);
  fill(yellow); 
  stroke(yellow);
  for(float x = -300; x <= 300; x+= 0.1f)
  {
    circle(x * 10, ((float)Math.pow(x, 2) - (15 * x) -3), 5);
  }
}

void drawSinWave()
{
  color pink = color(255,0,255);
  fill(pink); 
  stroke(pink);
  for(float x = -300; x <= 300; x+= 0.1f)
  {
    circle(x, (amp * (float)Math.sin((x+temp) * freq)), 5);
  }
   temp += time;
}

void drawCartesianPlane(float x, float y)
{
  strokeWeight(1);
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
