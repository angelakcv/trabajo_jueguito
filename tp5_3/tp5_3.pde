//declaro
Juego juego;
Escenario escenario;


void setup() {
  size (800, 400);
  //inicializo clase
  juego = new Juego(10);
  escenario = new Escenario();
}

void draw() {
  background(247, 117, 117);
  //llamo a los métodos de la clase juego
  juego.update();
  juego.draw();
}

void keyPressed() {
  juego.teclado (keyCode);
  juego.key();
}

void mousePressed() {
  //juego.click();
  //escenario.click(escenario);
  escenario.click1();
  //escenario.actualizar();
}
