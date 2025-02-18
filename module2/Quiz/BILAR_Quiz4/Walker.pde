public class Walker
{
  public float x;
  public float y;
  public float r;
  public float g;
  public float b;
  
  public float size;
  float tx = 0;
  float ty = 10000;
  
  float psize = 0;
  
  float cr = 255;
  float cg = 255;
  float cb = 255; 
  
  
  void render()
  {
    fill(r, g, b); 
    circle(x, y, size);
  }
  
  void perlinWalk()
  {
    x = map(noise(tx), 0, 1, -640, 640);
    y = map(noise(ty), 0, 1, -360, 360);
    
    tx += 0.01f;
    ty -= 0.01f;
  }
  
  void perlinColor()
  {
    r = map(noise(cr), 0, 1, 0, 255);
    g = map(noise(cg), 0, 1, 0, 255);
    b = map(noise(cb), 0, 1, 0, 255);
    
    cr -= 0.05;
    cg -= 0.09;
    cb -= 0.03f;
  }
  
  void perlinSize()
  {
    size = map(noise(psize), 0, 1, 5, 150);
    
    psize -= 0.01f;
    
  }
}
