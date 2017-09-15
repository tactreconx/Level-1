public class Ball {
  int x;
  int y;
  color Color;
  int Radius;

  public Ball(int x, int y, int Radius, color Color) {
    this.x=x;
    this.y=y;
    this.Radius=Radius;
    this.Color=Color;
  }
  public void move() {
    x+=5;
    y+=3;
  }
  public void draw() {
    ellipse(x, y, Radius, Color);
  }
}


