public class Celestial_object {
  int xspeed;
  int yspeed;
  color Color;
  int radius;
  int x;
  int y;
  float percentcovered=-(x+1)*135;
  private Celestial_object(int xspeed, int yspeed, color Color, int radius, int x, int y) {
    this.xspeed=xspeed;
    this.yspeed=yspeed;
    this.Color=Color;
    this.radius=radius;
    this.x=x;
    this.x=x;
  }
  
    public void setskycolor(float percentcovered){
      float percentexposed=1-percentcovered;
    float r=135*percentexposed;
    float g=206*percentexposed;
    float b=250*percentexposed;
    background(r,g,b);
    
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
