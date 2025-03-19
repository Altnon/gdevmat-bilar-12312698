public class Walker
{
    float standardDeviationX = 200;
    float meanX = random(20) ;
    float x = standardDeviationX * randomGaussian() + meanX;
   
    public PVector pos = new PVector(x, random(Window.bottom, Window.top));
    public PVector velocity = new PVector(); 
    public PVector acceleration = new PVector();

    
    public float scale = random(10,40); 
    public float velocityLimit = 10;
    
    
    public Walker()
    {
      
    }
    
    public void update(PVector mousePos)
    {
        PVector direction = PVector.sub(mousePos, pos);
        direction.normalize().mult(0.2);
        
        this.acceleration = direction;
        this.velocity.add(this.acceleration);
        this.velocity.limit(velocityLimit);
        this.pos.add(this.velocity);
    }
    
    public void checkEdges()
    {
       if(this.pos.x > Window.right)
       {
         this.pos.x = Window.left;
       }
       else if(this.pos.x < Window.left)
       {
         this.pos.x = Window.right;
       }
       
       if(this.pos.y > Window.top)
       {
         this.pos.y = Window.bottom;
       }
       else if(this.pos.y < Window.bottom)
       {
         this.pos.y = Window.top;
       }
       
    }
    

    public void render()
    {
       circle(pos.x, pos.y, scale); 
    }
}
