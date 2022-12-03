class Spaceship extends Floater  
{   
   public Spaceship(){
     corners = 3;
     xCorners = new int[corners];
     xCorners[0] = 0;
     xCorners[1] = 15;
     xCorners[2] = 15;
     yCorners = new int[corners];
     yCorners[0] = 0;
     yCorners[1] = 15;
     yCorners[2] = -15;
     myColor = color(255, 255, 255);
     myCenterX = myCenterY = 200;
     myXspeed = myYspeed = 0;
     myPointDirection = 0;
   }
public void hyperspace(){
  myCenterX = Math.random()*401;
  myCenterY = Math.random()*401;
  myPointDirection = Math.random()*361;
  myXspeed = 0;
  myYspeed = 0;
}

public void setX(double x){
  myCenterX = x;
}

public double getX(){
  return myCenterX;
}

public void setY(double y){
  myCenterY = y;
}

public double getY(){
  return myCenterY;
}

public void setDirectionX(double x){
  myXspeed = x;
}

public double getDirectionX(){
  return myXspeed;
}

public void setDirectionY(double y){
  myYspeed = y;
}

public double getDirectionY(){
  return myYspeed;
  
}
public void setPointDirection(double degrees){
  myPointDirection = degrees;
}

public double getPointDirection(){
  return myPointDirection;
}
}
