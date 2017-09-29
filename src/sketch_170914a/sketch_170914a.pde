
Wall wall;
Ball ball;
Paddle paddle1;
Paddle paddle2;
void setup() {
  size(900, 900);
  color green= color(0, 255, 0);
  color blue= color(77, 166, 255);
  color black= color(0, 0, 0);
  color white= color(255,255,255);
  color grey= color(216,214,214);
  ball= new Ball(18, 40,10,10, 20, green);
  wall =new Wall(10, 4, 875, 875, white);
  paddle1= new Paddle(810, 400, 20, 150, grey,'p','l');
  paddle2= new Paddle(55, 400, 20, 150, grey,'q','a');
}
void draw() {
  wall.draw();
  ball.draw();
  ball.move();
  paddle1.draw();
  paddle2.draw();
  if(keyPressed){
      paddle2.move(key);
      paddle1.move(key);
    
  }

  
 

  print(mouseX+",",mouseY);
}

