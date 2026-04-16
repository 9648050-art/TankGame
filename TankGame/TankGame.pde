// Mariama Sidibe | Apr 14 2026 | TankGame
PImage bg;
Tank tank1;
Arraylist<Obstacle> obstacles = new Arratlist<Obstacle>();

void setup() {
  size(500, 500);
  bg = loadImage("bg1.png");
  tank1 = new Tank();
  obstacles.add(new Obstacle(250, 250));
  obstacles.add(new Obstacle(25, 400));
}

void draw() {
  background(127);
  imageMode(CORNER);
  image(bg, 0, 0);

  for (int i = 0; i < obstacles.size(); i++) {
    Obstacle obs = obstacles.get(i);
    obs.display();
    obs.move();
  }

  tank1.display();
}

void keyPressed() {
  if (keyCode == RIGHT) {
    tank1.move();
  }
}
