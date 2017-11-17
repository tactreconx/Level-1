public class Raindrop {
  int x;
  int y;
  int xspeed;
  int yspeed;
  color Color;
  int Radius;
boolean dropCaught=false;

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
    if(y>900){
      y=0;
      x=ceil(random(900));
      dropCaught=false;
  }
  }
  public void draw() {
    fill(this.Color);
    ellipse(x, y, Radius, Radius);
  }
}