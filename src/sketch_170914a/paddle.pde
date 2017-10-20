public class Paddle{
int x;
int y;
color Color;
int Length;
int Width;
char up;
char down;
public Paddle(int x, int y, int Length, int Width, color Color,char up, char down) {
  this.x=x;
  this.y=y;
  this.Color=Color;
  this.Length=Length;
  this.Width=Width;
  this.up=up;
  this.down=down;
}
public void move(char c) {
  if(c==down){
    y+=5;
  }
  if(c==up){
    y-=5;
  }

}
public void draw() {
  fill(Color);
  rect(x, y, Length, Width);
}
}