public class Paddle{
int x;
int y;
color Color;
int Length;
int Width;
public Paddle(int x, int y, int Length, int Width, color Color) {
  this.x=x;
  this.y=y;
  this.Color=Color;
  this.Length=Length;
  this.Width=Width;
}
public void move(char c) {
}
public void draw() {
  fill(Color);
  rect(x, y, Length, Width, Color);
}
}

