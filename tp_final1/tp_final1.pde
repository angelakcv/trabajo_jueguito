Aventura aventura;

void setup(){
  size(800, 400);
  aventura = new Aventura();
}

void draw(){
  aventura.dibujar();
  
}

void mousePressed(){
  aventura.click();
}
