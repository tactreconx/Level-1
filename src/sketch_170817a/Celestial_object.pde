public class Celestial_object {
  int xspeed;
  int yspeed;
  color Color;
  int radius;
  int x;
  int y;
  private Celestial_object(int xspeed, int yspeed, color Color, int radius, int x, int y) {
    this.xspeed=xspeed;
    this.yspeed=yspeed;
    this.Color=Color;
    this.radius=radius;
    this.x=x;
    this.x=x;
  }
  public void move() {
    x+=xspeed;
    y+=yspeed;
  }
  public void draw() {
    fill(Color);
    ellipse(x, y, radius, radius);
  }
}
