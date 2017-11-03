public class Raindrop {
  int x;
  int y;
  int xspeed;
  int yspeed;
  color Color;
  int Radius;


  public Raindrop(int x, int y, int yspeed, int Radius, color Color) {
    this.x=x;
    this.y=y;
    this.xspeed=xspeed;
    this.yspeed=yspeed;
    this.Radius=Radius;
    this.Color=Color;
  }
  public void move() {

    y+=yspeed;
  }
  public void draw() {
    fill(Color);
    ellipse(x, y, Radius, Radius);
  }
}


