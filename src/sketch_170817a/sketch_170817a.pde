Celestial_object sun;
void setup(){
  size(900,900);

  color green= color(0,255,0);
  color white= color(255,255,255);
  sun= new Celestial_object(10,10,green,75,12,883);
  
}

void draw(){
  background(255,255,255);
  sun.draw();
  sun.move();
  println(mouseX,mouseY);
}
