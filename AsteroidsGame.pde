Spaceship lamchop = new Spaceship();
ArrayList <Asteroid> blob = new ArrayList <Asteroid> ();
ArrayList <Bullet> pew = new ArrayList <Bullet> ();
Star[] stars = new Star[250];
public void setup() {
  size(400, 400);
  for(int x = 0; x < stars.length; x++){
    stars[x] = new Star();
  }
   for (int x = 0; x < 10; x++) {
    blob.add(new Asteroid());
  }
}
public void draw() {
  background(0);
  lamchop.show();
  lamchop.move();
  for (int x = 0; x < pew.size(); x++) {
    if (pew.get(x).getX() < 1 || pew.get(x).getY() < 1){
       pew.remove(x);
       break;
     }
    pew.get(x).show();
    pew.get(x).move();
  }
  for (int x = 0; x < blob.size(); x++) {
    blob.get(x).show();
    blob.get(x).move();
    if (dist((float)blob.get(x).getX(), (float)blob.get(x).getY(), (float)lamchop.getX(), (float)lamchop.getY() ) < 40) {
      blob.remove(x);
    }
  }
  for(int x = 0; x < stars.length; x++){
    stars[x].show();
  }
  for (int i = 0; i < blob.size(); i++) {
    for (int x = 0; x < pew.size(); x++) {
      if (dist(blob.get(i).getX(), blob.get(i).getY(), pew.get(x).getX(), pew.get(x).getY() ) < 40) {
        blob.remove(i);
        pew.remove(x);
        break;
      }
    }
  }
}
public void keyPressed(){
  if (key == 'q')
  pew.add(new Bullet(lamchop));
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
