
Wall top;
Wall wall2;
Ball ball;
Paddle paddle1;
Paddle paddle2;
void setup() {
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
  }
  if (shouldbounce4(paddle2, ball)) {
    ball.bouncehorizontally();
  }
  print(mouseX+",", mouseY);
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




