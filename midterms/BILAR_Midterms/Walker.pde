class Walker 
 {
   float standardDeviationX = 200;
   float meanX = random(20) ;
   float x = standardDeviationX * randomGaussian() + meanX;
   
   PVector pos = new PVector(x, random(Window.bottom, Window.top));
   PVector speed = new PVector(10, 5); 
   color rand = color(random(256),random(256),random(256));
   float size = random(10,40);
   
   void blackholeRender()
   {
     color white = color(255);
     pos = new PVector( mouseX - Window.widthPx/2, -(mouseY - Window.heightPx/2));
     fill(white);
     noStroke();
     circle(pos.x, pos.y, 100);  
   }
   
   void render()
   {
     
     fill(rand);
     noStroke();
     circle(pos.x, pos.y, size); 
   }
   

  void moveTo(Walker target)
  {
    PVector direction = PVector.sub(target.pos, pos);
    direction.normalize().mult(12);
    pos.add(direction); 
  }

}
