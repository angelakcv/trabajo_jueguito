class Personaje {

  //Propiedades
  PImage persDeAventura;
  float x, y, ancho, alto;
  String tipo;

  //Constructor
  Personaje(String tipoPer) {

    tipo = tipoPer;

    persDeAventura = loadImage(tipo + ".png");
  }

  //Metodos
  void dibujarPer2(float x_, float y_, float ancho_, float alto_) {
    x = x_;
    y = y_;
    ancho = ancho_;
    alto = alto_;
    image(persDeAventura, x, y, ancho, alto);
  }

  void dibujarPer1(float x_, float y_) {
    x = x_;
    y = y_;
    image(persDeAventura, x, y);
  }
}
