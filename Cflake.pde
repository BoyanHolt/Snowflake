
class Cflake extends Flake {
  float r, g, b;


  Cflake(float x_,float y_) {
    x = x_;
    y = y_;
    r = (float)(Math.random()*256);
    g = (float)(Math.random()*256);
    b = (float)(Math.random()*256);
  }

  void show() {
    fill(r, g, b);
    stroke(r,g,b);
    ellipse(x, y, (dia * scale), (dia * scale));
  }
}
