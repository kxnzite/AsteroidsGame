class Asteroid extends Floater {
  private double myRotation;
   public Asteroid(){
     corners = 8;
     xCorners = new int[corners];
     xCorners[0] = 0;
     xCorners[1] = 25;
     xCorners[2] = 35;
     xCorners[3] = 25;
     xCorners[4] = 0;
     xCorners[5] = -25;
     xCorners[6] = -35;
     xCorners[7] = -25;
     yCorners = new int[corners];
     yCorners[0] = 35;
     yCorners[1] = 25;
     yCorners[2] = 0;
     yCorners[3] = -25;
     yCorners[4] = -35;
     yCorners[5] = -25;
     yCorners[6] = 0;
     yCorners[7] = 25;
     myColor = color(155, 155, 155);
     myCenterX = Math.random()*401;
     myCenterY = Math.random()*401;
     myXspeed = Math.random();
     myYspeed = Math.random();
     myPointDirection = Math.random()*361;
     myRotation = (Math.random()*4)-2;
   }
  public float getX() {
    return (float) myCenterX;
  }

  public float getY() {
    return (float) myCenterY;
  }
  
  public void move() {
    turn(myRotation);
    super.move();
}
}
