class Bullet extends Floater 
{
  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getDirectionX();
    myYspeed = theShip.getDirectionY();
    myPointDirection = theShip.getPointDirection();
    myColor = color(255,0,0);
    accelerate(6);
  }
  public void show() {
    fill(myColor);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  
  public void move() {
    super.move();
  }
  
  public float getX() {
    return (float) myCenterX;
  }

  public float getY() {
    return (float) myCenterY;
  }
}
