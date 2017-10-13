import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;
Minim m;
AudioPlayer gameover;
AudioPlayer ping;




Wall top;
Wall wall2;
Ball ball;
Paddle paddle1;
Paddle paddle2;
int p1score=0;
int p2score=0;
void setup() {
  m=new Minim(this);
  gameover=m.loadFile("gameover.wav", 1024);
  ping=m.loadFile("ping.wav", 1024);
  size(900, 900);

  color green= color(0, 255, 0);
  color blue= color(77, 166, 255);
  color black= color(0, 0, 0);
  color white= color(255, 255, 255);
  color grey= color(216, 214, 214);
  color red= color(255, 0, 0);
  ball= new Ball(150, 40, 2, 4, 20, green);
  top =new Wall(0, 13, 900, 5, grey);
  wall2=new Wall(0, 891, 900, 5, grey);
  paddle1= new Paddle(810, 400, 20, 150, grey, 'p', 'l');
  paddle2= new Paddle(55, 400, 20, 150, grey, 'q', 'a');
}
void draw() {
  background(255, 255, 255);
  top.draw();
  wall2.draw();
  ball.draw();
  ball.move();
  paddle1.draw();
  paddle2.draw();
  textSize(15);
  fill(255, 0, 0);
  text("player 1 score="+p1score, 10, 30);
  text("player 2 score="+p2score, 760, 30);
  if (keyPressed) {
    paddle2.move(key);
    paddle1.move(key);
  }
  if (shouldbounce(top, ball)) {
    ball.bouncevertically();
  }
  if (shouldbounce2(wall2, ball)) {
    ball.bouncevertically();
  }
  if (shouldbounce3(paddle1, ball)) {
    ball.bouncehorizontally();
    p2score++;
    ping.play();
  }
  if (shouldbounce4(paddle2, ball)) {
    ball.bouncehorizontally();
    p1score++;
    ping.play();
  }
  if (endgame1(paddle1, ball)) {
    gameover.play();
    ball.xspeed=0;
    ball.yspeed=0;
    textSize(50);
    text("Gameover", 295, 459);
    print(mouseX+",", mouseY);
  }
  if (endgame2(paddle2, ball)) {
    gameover.play();
    ball.xspeed=0;
    ball.yspeed=0;
    textSize(50);
    text("Gameover", 295, 459);
    print(mouseX+",", mouseY);
  }
}
  boolean shouldbounce(Wall top, Ball ball) {
    if (ball.y<=top.y+ball.Radius) {
      return true;
    } else
      return false;
  }
  boolean shouldbounce2(Wall wall2, Ball ball) {
    if (ball.y>=wall2.y+ball.Radius) {
      return true;
    } else
      return false;
  }
  boolean shouldbounce3(Paddle paddle1, Ball ball) {
    if (ball.x>=paddle1.x-ball.Radius) {
      return true;
    } else
      return false;
  }
  boolean shouldbounce4(Paddle paddle2, Ball ball) {
    if (ball.x<=paddle2.x+ball.Radius) {
      return true;
    } else
      return false;
  }
  boolean endgame1(Paddle paddle1, Ball ball) {
    if (ball.x>paddle1.x-ball.Radius+5) {
      return true;
    } else
      return false;
  }
  boolean endgame2(Paddle paddle2, Ball ball) {
    if (ball.x<paddle2.x+ball.Radius-5) {
      return true;
    } else
      return false;
  }



