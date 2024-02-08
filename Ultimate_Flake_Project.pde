float dia = 5;
float spd = 3;
float spread = 8;  //should be even for balanced spread
int spokes = 6;
float scale = 0.75;
Flake cur;  //current flake
ArrayList<Flake> flakes;

void setup() {
  size(500, 500);
  flakes = new ArrayList<Flake> ();
  createAddFlake();
}

void draw() {
  translate(width/2, height/2);
  background(0);

  while (!cur.stopped() && !cur.collided()) {
    cur.move();
  }

  showFlakes();
  createAddFlake();
}

void keyPressed() {
  flakes.clear();
  loop();
}

void showFlakes() {
  for (int i = 0; i <= spokes; i++) {
    rotate(2*PI/spokes);

    for (Flake f : flakes) {
      f.show();
    }
  }
}

void createAddFlake() {
  if (((Math.random()*2)) >= 1) {
  cur = new Flake(width/2 - dia, 0);}
  else {cur = new Cflake(width/2 - dia, 0);
  cur.d *= cur.d * 2;
}
  flakes.add(cur);
  if (cur.collided()) flakes.clear();
}
