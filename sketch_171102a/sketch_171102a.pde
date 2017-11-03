Bucket bucket1;
Bucket bucket2;
Bucket bucket3;
Bucket bucket4;
Raindrop raindrop;
void setup() {
  size(900, 900);
  color green= color(0, 255, 0);
  color blue= color(77, 166, 255);
  color black= color(0, 0, 0);
  color white= color(255, 255, 255);
  color grey= color(216, 214, 214);
  color red= color(255, 0, 0);
  bucket1=new Bucket(80, 800, 150, 75/4, green, 'a', 'd');
  bucket2=new Bucket(80, 800, 150, 75/3, green, 'a', 'd');
  bucket3=new Bucket(80, 800, 150, 75/2, green, 'a', 'd');
  bucket4=new Bucket(80, 800, 150, 75/1, green, 'a', 'd');
  raindrop=new Raindrop(63, 137, 10, 10, blue);
}
void draw() {
  background(250, 250, 250);
  bucket1.draw();
  bucket2.draw();
  bucket3.draw();
  bucket4.draw();

  raindrop.draw();
  raindrop.move();
  // print(mouseX,mouseY);

  if (keyPressed) {
    bucket1.move(key);
    bucket1.move(key);
    bucket2.move(key);
    bucket2.move(key);
    bucket3.move(key);
    bucket3.move(key);
    bucket4.move(key);
    bucket4.move(key);
    //println("keyPressed", key);
  }

  boolean in1 = inbucket1( bucket1,  raindrop);
    if (in1) {
    }
  println(in1);
}
boolean inbucket1(Bucket bucket1, Raindrop raindrop) {
  if (raindrop.y==bucket1.y+bucket1.Length&&raindrop.x==bucket1.x+bucket1.Width) {
    return true;
  } else
    return false;
}

