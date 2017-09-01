Celestial_object sun;
Celestial_object moon;
void setup(){
  size(900,900);

  color green= color(0,255,0);
  color white= color(255,255,255);
  color black=color(0,0,0);
  color skyblue=color(135,206,250);
  sun= new Celestial_object(-10,-10,green,75,400,400);
  moon= new Celestial_object(-8,-8,white,50,400,400);
  
}


    

void draw(){
  
  float x=sun.getpercentcovered(moon);
 sun.setskycolor(x);
  sun.draw();
  sun.move();
  moon.draw();
  moon.move();
  println(mouseX,mouseY);
}
