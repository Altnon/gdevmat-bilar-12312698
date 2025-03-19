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
    
    public float mass = 1;
    public Walker()
    {
      
    }
    //Second Law of Motion
    public void applyForce(PVector force)
    {
        PVector f = PVector.div(force, this.mass);
        this.acceleration.add(f); //force accumulation
        
    }
    //Third Law of Motion
    public void bounceWall()
    {
       if((position.x>Window.right) || (position.x< Window.left))
       {
         this.velocity.x *= -1;
       }
       if((position.y>Window.top) || (position.y< Window.bottom))
       {
         this.velocity.y *= -1;
       }
      
       
    }
    public void update()
    {
        //this.acceleration = PVector.random2D();
        this.velocity.add(this.acceleration); //velocity accumulation
        this.velocity.limit(velocityLimit);
        this.position.add(this.velocity);
        this.acceleration.mult(0); //resets acceleration
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
