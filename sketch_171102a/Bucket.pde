public class Bucket{
  int x;
  int y;
  int Height ;
  int Width;
  color Color;
  char right;
  char left;
  public Bucket(int x,int y, int Width, int Height, color Color, char right, char left){
    this.x=x;
    this.y=y;
    this.Color=Color;
    this.Height=Height;
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
    fill(this.Color);
    rect(x,y,Width,Height);
  }
  public void setColor(color Color){
    this.Color=Color;
    
    
  }
}
