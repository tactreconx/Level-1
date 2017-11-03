public class Bucket{
  int x;
  int y;
  int Length;
  int Width;
  color Color;
  char right;
  char left;
  public Bucket(int x,int y, int Length, int Width, color Color, char right, char left){
    this.x=x;
    this.y=y;
    this.Color=Color;
    this.Length=Length;
    this.Width=Width;
    this.right=right;
    this.left=left;
  }
  public void move(char a){
    if(a==right){
      x-=5;
    }
    if(a==left){
      x+=5;
    }
  }
  public void draw(){
    stroke(Color);
    rect(x,y,Length,Width);
  }
}
