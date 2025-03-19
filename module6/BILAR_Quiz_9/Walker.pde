public class Walker
{
    public PVector position = new PVector(-500, 200);
    public PVector velocity = new PVector(); 
    public PVector acceleration = new PVector();
    public float scale = 15; 
    public float velocityLimit = 10;
    color rand = color(random(256),random(256),random(256));
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
       if((this.position.x >= Window.right) || (this.position.x <= Window.left))
       {
         this.velocity.x *= -1;
       }
       if((this.position.y >= Window.top) || (this.position.y <= Window.bottom))
       {
         this.velocity.y *= -1;
       }       
    }
    public void update()
    {
        this.velocity.add(this.acceleration); //velocity accumulation
        this.velocity.limit(velocityLimit);
        this.position.add(this.velocity);
        this.acceleration.mult(0); //resets acceleration
    }
    
    public void render()
    {
       fill(rand);
       noStroke();
       circle(position.x, position.y, scale); 
    }
}
