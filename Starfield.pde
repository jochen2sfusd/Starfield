Particle[] particles = new Particle[10];

void setup() {
  size(700, 400);
  background(0);
  particles[0] = new OddballParticle();
  for(int i = 1; i < 10; i++) {
    particles[i] = new Particle();
  }
}
void draw() {
  background(0);
  for(int i = 0; i < particles.length; i++) {
    particles[i].move();
    particles[i].show();
  }
}
class Particle {
  int col;
  double x, y, spd;
  Particle() {
    x = (int)(Math.random()*650+50);
    y = (int)(Math.random()*350+50);
    spd = (int)(Math.random()*5);
    col = 200;
  }
  void move() {
    x -= spd;
  }
  void show() {
    ellipse((float)x, (float)y, (float)20, (float)10);
  }
}
class OddballParticle extends Particle {
  OddballParticle() {
    x = 25;
    y = 200;
    fill(col);
  }
  void move() {
    if(y < mouseX) {
      y += 5;
    }
    else if(y>mouseX) {
      y -= 5;
    }
    spd = 0;
  }
  void show() {
    fill(col);
  }
}
