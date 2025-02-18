void setup()
{
  size(1020, 720, P3D); 
  camera(0,0, -(height/2.0)/tan(PI*30.0/180.0), 0, 0, 0, 0, -1, 0);
  background(255);
}

void draw()
{ 
  float standardDeviationX = 200;
  float meanX = random(20) ;
  float x = standardDeviationX * randomGaussian() + meanX;
  
  float standardDeviationSize = random(100);
  float meanSize = random(20);
  float size = standardDeviationSize * randomGaussian() + meanSize;
  
  noStroke();
  color randColor = color(random(256),random(256),random(256));
  fill(randColor,random(10, 100));
  circle(x, random(-(height/2.0), (height/2.0)), size);
}
