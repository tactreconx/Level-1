Celestial_object sun;
void setup(){
  size(900,900);

  color green= color(0,255,0);
  color white= color(255,255,255);
  color black=color(0,0,0);
  color skyblue=color(135,206,250);
  sun= new Celestial_object(10,10,green,75,12,883);
  
}


    

void draw(){
 sun.setskycolor(1);
  sun.draw();
  sun.move();
  println(mouseX,mouseY);
}
