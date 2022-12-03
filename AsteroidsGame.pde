Spaceship lamchop = new Spaceship();
Star[] stars = new Star[250];
public void setup() {
  size(400, 400);
  for(int x = 0; x < stars.length; x++){
    stars[x] = new Star();
  }
}
public void draw() {
  background(0);
  lamchop.show();
  lamchop.move();
  for(int x = 0; x < stars.length; x++){
    stars[x].show();
  }
}
public void keyPressed(){
  if (key == 'w')
  lamchop.accelerate(1);
  if (key == 'a')
  lamchop.turn(-10);
  if (key == 'd')
  lamchop.turn(10);
  if (key == 's')
  lamchop.accelerate(-1);
  if (key == 'z')
  lamchop.hyperspace();
}
