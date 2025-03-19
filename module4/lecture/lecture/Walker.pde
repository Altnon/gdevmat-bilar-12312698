public class Walker
{
    public PVector position = new PVector();
    public PVector velocity = new PVector(); //Speed of Our Walker
    //Accelaration rate of change of our walker
    public PVector acceleration = new PVector();
    //measured in screen pixels - accumulate over time in the velocity 
    //every frame u add this value 
    
    public float scale = 15; 
    public float velocityLimit = 10;
    
    public Walker()
    {
      
    }
    
    public void update()
    {
        this.acceleration = PVector.random2D();
        this.velocity.add(this.acceleration);
        this.velocity.limit(velocityLimit);
        this.position.add(this.velocity);
    }
    
    public void checkEdges()
    {
       if(this.position.x > Window.right)
       {
         this.position.x = Window.left;
       }
       else if(this.position.x < Window.left)
       {
         this.position.x = Window.right;
       }
       
       if(this.position.y > Window.top)
       {
         this.position.y = Window.bottom;
       }
       else if(this.position.y < Window.bottom)
       {
         this.position.y = Window.top;
       }
       
    }
    public void render()
    {
       circle(position.x, position.y, scale); 
    }
}
