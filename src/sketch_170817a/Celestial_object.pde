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
    this.y=y;
  }
  
    public void setskycolor(float percentcovered){
      float percentexposed=1-percentcovered;
    float r=135*percentexposed;
    float g=206*percentexposed;
    float b=250*percentexposed;
    background(r,g,b);
    
  }
  float getpercentcovered(Celestial_object other){
    float dx= this.x-other.x;
    float dy=this.y-other.y;
    float distance= sqrt(dx*dx+dy*dy);
    if(distance>other.radius+this.radius){
      return 0;
    }
     if(distance==0){
       return 1;
     }
     return 1.0-distance/(other.radius+this.radius);
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
