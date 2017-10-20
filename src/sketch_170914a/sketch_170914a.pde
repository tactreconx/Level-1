import processing.sound.*;
SoundFile gameover;
SoundFile ping;




Wall top;
Wall wall2;
Ball ball;
Paddle paddleL;
Paddle paddleR;
int p1score=0;
int p2score=0;
void setup() {
  gameover= new SoundFile(this, "gameover.wav");
  ping= new SoundFile(this, "ping.wav");
  size(900, 900);

  color green= color(0, 255, 0);
  color blue= color(77, 166, 255);
  color black= color(0, 0, 0);
  color white= color(255, 255, 255);
  color grey= color(216, 214, 214);
  color red= color(255, 0, 0);
  ball= new Ball(85, 40, 2, 4, 20, green);
  top =new Wall(0, 13, 900, 5, grey);
  wall2=new Wall(0, 891, 900, 5, grey);
  paddleR= new Paddle(810, 400, 20, 150, grey, 'p', 'l');
  paddleL= new Paddle(55, 400, 20, 150, grey, 'q', 'a');
}
void draw() {
  background(255, 255, 255);
  top.draw();
  wall2.draw();
  ball.draw();
  ball.move();
  paddleL.draw();
  paddleR.draw();
  textSize(15);
  fill(255, 0, 0);
  text("player 1 score="+p1score, 10, 30);
  text("player 2 score="+p2score, 760, 30);
  if (keyPressed) {
    paddleR.move(key);
    paddleL.move(key);
  }
  if (shouldbounce(top, ball)) {
    ball.bouncevertically();
  }
  if (shouldbounce2(wall2, ball)) {
    ball.bouncevertically();
  }
  if (shouldbounce3(paddleL, ball)) {
    ball.bouncehorizontally();
    p1score++;
    ping.play();
  }
  if (shouldbounce4(paddleR, ball)) {
    ball.bouncehorizontally();
    p2score++;
    ping.play();
  }
  if (isPastRightPaddle(paddleR, ball)) { //<>//
    gameover.play(); //<>//
    ball.xspeed=0; //<>//
    ball.yspeed=0;
    textSize(50);
    text("Gameover", 295, 459);
    //print(mouseX+",", mouseY);
  }
  if (isPastLeftPaddle(paddleL, ball)) {
    gameover.play();
    ball.xspeed=0;
    ball.yspeed=0;
    textSize(50);
    text("Gameover", 295, 459);
    //print(mouseX+",", mouseY);
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
boolean shouldbounce3(Paddle paddleL, Ball ball) {
  if (ball.x<=paddleL.x+ball.Radius&&ball.y<paddleL.y&&ball.y>paddleL.y+paddleL.Length) {
    return true;
  } else
    return false;
}
boolean shouldbounce4(Paddle paddleR, Ball ball) {
  println(ball.x, paddleR.x, ball.Radius);
  if (ball.x>=paddleR.x-ball.Radius&&ball.y<paddleR.y&&ball.y>paddleR.y+paddleR.Length) {
    return true;
  } else
    return false;
}
boolean isPastLeftPaddle(Paddle paddle, Ball ball) {

  if (ball.x<paddle.x) {
    return true;
  } else
    return false;
}
boolean isPastRightPaddle(Paddle paddle, Ball ball) {


  if (ball.x>paddle.x) {
    return true;
  } else
    return false;
}