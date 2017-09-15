public class Wall {
  int x;
  int y;
  int Length;
  int Width;
  color Color;
  public Wall(int x, int y, int Length, int Width, color Color) {
    this.x=x;
    this.y=y;
    this.Color=Color;
    this.Length=Length;
    this.Width=Width;
  }
    void draw(){
    rect(x,y,Length,Width,Color);
  }
  
}

