Particle[] particles = new Particle[20];

// public void settings() {
//   size(1000, 400);
// }
void setup() {
  size(1000,400);
  background(0);
  particles[0] = new OddballParticle();
  for(int i = 1; i < 20; i++) {
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
    x = (int)(Math.random()*400+600);
    y = (int)(Math.random()*400);
    spd = (int)(Math.random()*3+2);
    col = 200;
  }
  void move() {
    x -= spd;
    if(x < 10) {
      x = (int)(Math.random()*400+600);
    }
  }
  void show() {
    ellipse((float)x, (float)y, (float)20, (float)10);
  }
}
class OddballParticle extends Particle {
  OddballParticle() {
    x = 100;
    y = 200;
    fill(col);
  }
  void move() {
    if(y < mouseY) {
      y += 2.5;
    }
    if(y > mouseY) {
      y -= 2.5;
    }
  }
  void show() {
    ellipse((float)x, (float)y, (float)40, (float)40);
    fill(col);
  }
}
