class Star //note that this class does NOT extend Floater
{
  private double myX, myY;
  private int myColor;
  
  public Star (){
    myX = Math.random()*401;
    myY = Math.random()*401;
    myColor = color(255,255,255);
  }
  public void show(){
    fill(myColor);
    ellipse((float)myX, (float)myY, 2, 2);
  }
}
