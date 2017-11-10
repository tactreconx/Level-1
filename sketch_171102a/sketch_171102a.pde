Bucket bucket1;
Bucket bucket2;
Bucket bucket3;
Bucket bucket4;
Raindrop raindrop1;
Raindrop raindrop2;
Raindrop raindrop3;
Raindrop raindrop4;

color green= color(0, 255, 0);
color blue= color(77, 166, 255);
color black= color(0, 0, 0);
color white= color(255, 255, 255);
color grey= color(216, 214, 214);
color red= color(255, 0, 0);
void setup() {
  size(900, 900);

  bucket1=new Bucket(80, 700, 75, 150, grey, 'a', 'd');
  bucket2=new Bucket(80, 738, 75, 150, grey, 'a', 'd');
  bucket3=new Bucket(80, 775, 75, 150, grey, 'a', 'd');
  bucket4=new Bucket(80, 813, 75, 150, grey, 'a', 'd');
  raindrop1=new Raindrop(ceil(random(900)), 137, 10, 10, blue);
  raindrop2=new Raindrop(ceil(random(900)), 137, 10, 10, blue);
  raindrop3=new Raindrop(ceil(random(900)), 137, 10, 10, blue);
  raindrop4=new Raindrop(ceil(random(900)), 137, 10, 10, blue);
}
void draw() {

  background(250, 250, 250);
  bucket1.draw();
  bucket2.draw();
  bucket3.draw();
  bucket4.draw();

  raindrop1.draw();
  raindrop2.draw();
  raindrop3.draw();
  raindrop4.draw();
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
  boolean in1=inbucket(bucket1,raindrop4);
  if(in1){
    bucket1.setColor(blue);
  }
  boolean in2=inbucket(bucket2,raindrop3);
  if(in2){
    bucket2.setColor(blue);
  }
boolean in3=inbucket(bucket3,raindrop2);
if(in3){
  bucket3.setColor(blue);
}
  boolean in4 = inbucket( bucket4, raindrop1);
  if (in4) {
    bucket4.setColor(blue);
    
  }
  println(in4);
}
boolean inbucket(Bucket bucket, Raindrop raindrop) {
  if (raindrop.y>bucket.y&&raindrop.x<=bucket.x+bucket.Width) {
    return true;
  } else
    return false;
}

