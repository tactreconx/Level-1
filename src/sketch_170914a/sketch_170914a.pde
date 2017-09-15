
Wall wall;
Ball ball;
Paddle paddle1;
Paddle paddle2;
void setup() {
  size(900, 900);
  color green= color(0, 255, 0);
  color blue= color(77, 166, 255);
  color black= color(0, 0, 0);
  ball= new Ball(18, 40, 10, green);
  wall =new Wall(10, 4, 900, 900, black);
  paddle1= new Paddle(810, 200, 30, 100, blue);
  paddle2= new Paddle(55, 200, 30, 100, blue);
}
void draw() {
  wall.draw();
  ball.draw();
  paddle1.draw();
  paddle2.draw();
  print(mouseX+",",mouseY);
}

