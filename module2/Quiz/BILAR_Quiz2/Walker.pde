class Walker 
{
  float x;
  float y;
  
  void render()
  {
    color rand = color(random(256),random(256),random(256));
    
    fill(rand,random(50, 100));
    stroke(rand);
    circle(x, y, 30); 
  }
  
  void randomWalkBiased()
  {
    int rng = int(random(101));
    
    if(rng >= 70)
    {//up
      y+= 5;
    }
    else if(rng <= 60 && rng > 30)
    {//down
      y-= 5;
    }
    else if(rng <= 30 && rng > 20)
    {//right
      x+= 5;
    }
    else if(rng <= 20)
    {//left
      x-= 5;
    }
  }
  void randomWalk()
  {
    int rng = int(random(8));
    
    if(rng == 0)
    {//up
      y+= 10;
    }
    else if(rng == 1)
    {//down
      y-= 10;
    }
    else if(rng == 2)
    {//right
      x+= 10;
    }
    else if(rng == 3)
    {//left
      x-= 10;
    }
    else if(rng == 4)
    {// up left
      x-= 10;
      y+= 10;
    }
    else if(rng == 5)
    {//up right
      x+= 10;
      y+= 10;
    }
    else if(rng == 6)
    {//down left
      x-= 10;
      y-= 10;
    }
    else if(rng == 7)
    {//down right
      x+= 10;
      y-= 10;
    }
  }
}
