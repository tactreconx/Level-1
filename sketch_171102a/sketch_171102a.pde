Bucket bucket1;
Bucket bucket2;
Bucket bucket3;
Bucket bucket4;
Raindrop raindrop;
int r=0;
//Raindrop raindrop2;
//Raindrop raindrop3;
//Raindrop raindrop4;

color green= color(0, 255, 0);
color blue= color(77, 166, 255);
color black= color(0, 0, 0);
color white= color(255, 255, 255);
color grey= color(216, 214, 214);
color red= color(255, 0, 0);
boolean gameStarted=false;
boolean dropCaught=false;
void setup() {
  size(900, 900);

  bucket1=new Bucket(80, 700, 75, 150, grey, 'a', 'd');
  bucket2=new Bucket(80, 738, 75, 150, grey, 'a', 'd');
  bucket3=new Bucket(80, 775, 75, 150, grey, 'a', 'd');
  bucket4=new Bucket(80, 813, 75, 150, grey, 'a', 'd');
  raindrop=new Raindrop(ceil(random(900)), 137, 10, 10, blue);
  //raindrop2=new Raindrop(ceil(random(900)), 137, 10, 10, blue);
  //raindrop3=new Raindrop(ceil(random(900)), 137, 10, 10, blue);
  //raindrop4=new Raindrop(ceil(random(900)), 137, 10, 10, blue);
}
void draw() {

  background(250, 250, 250);

  bucket1.draw();
  bucket2.draw();
  bucket3.draw();
  bucket4.draw();

  if (gameStarted==true) {
    textSize(30);
    fill(77, 166, 255);
    text("Raindrops Collected"+r, 295, 100);
    raindrop.draw();
    //raindrop2.draw();
    //raindrop3.draw();
    //raindrop4.draw();
    raindrop.move();
    //raindrop2.move();
    //raindrop3.move();
    //raindrop4.move();
    // print(mouseX,mouseY);
  } else {
    textSize(51);
    fill(51, 153, 255);
    text("THE RAIN GAME", 275, 305);
    textSize(50);
    fill(255, 0, 0);
    text("THE RAIN GAME", 275, 300);
    textSize(30);
    fill(255, 0, 0);
    text("PRESS SPACE TO START ", 300, 350);
  }
  if (key==' ') {
    gameStarted=true;
  }
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
  boolean in1=inbucket(bucket1, raindrop);
  if (in1) {
    bucket1.setColor(blue);
    raindrop.draw();
    raindrop.move();
    if (!dropCaught) {
      dropCaught=true;
      r++;
    }
    r++;
  }
  boolean in2=inbucket(bucket2, raindrop);
  if (in2) {
    bucket2.setColor(blue);
    raindrop.draw();
    raindrop.move();
  }
  boolean in3=inbucket(bucket3, raindrop);
  if (in3) {
    bucket3.setColor(blue);
  }
  boolean in4 = inbucket( bucket4, raindrop);
  if (in4) {
    bucket4.setColor(blue);
    raindrop.draw();
    raindrop.move();
  }

  println(in4);
}
boolean inbucket(Bucket bucket, Raindrop raindrop) {
  if (raindrop.y>bucket.y&&raindrop.x<=bucket.x+bucket.Width) {
    return true;
  } else
    return false;
}
public boolean inbucket1(Bucket bucket1, Raindrop raindrop) {
  if (raindrop.y>bucket1.y&&raindrop.x<=bucket1.x+bucket1.Width&&bucket1.y>bucket2.y) {
    return true;
  } else
    return false;
}
//FIX BUCKET DETECTION