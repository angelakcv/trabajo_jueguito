class Juego {
  //Propiedades (variables)

  PFont font2;

  int estado;
  int c = 10;

  int begin;
  int duracion;
  int time;

  int vidas;


  Dana jugador;
  Fuego[] fuego;
  Escenario fondo;

  //CONSTRUCTOR (setup del objeto)
  Juego(int cantidad) {
    c = cantidad;
    estado = 0;
    // inicializar los ojetos: jugador,fuego
    jugador = new Dana(width/2, 300, 100);
    //declaro la dimension de los arreglos
    fuego = new Fuego[c];
    //inicializo los objetos de los arreglos
    for (int i = 0; i<c; i++) {
      fuego[i] = new Fuego (-100, -100, 100);

      fondo = new Escenario ();
    }

    font2 = loadFont ("VCROSDMono-48.vlw");

    vidas = 3;

    begin = millis();
    time=duracion=10;
  }

  //Métodos (funciones)
  void dibujar(Escenario e, Escenario g) {
    float p = e.getEscena();
    if (p == 1) {
      texto(font2, color(255), 30);
      text("VIDAS: "+ vidas, 20, 40);

      //contador
      if (time> 0) {
        time = duracion -(millis()-begin)/1000;
        texto(font2, color(255), 30);
        text("TIEMPO: "+ time, 550, 40);
      } else {
        text("TIEMPO: "+ time, 550, 40);

        //println(g.getEstado());
        g.cambiarEstado("ganar");

        //vidas = 3;

        //begin = millis();
        //time=duracion=10;
      }
    }
  }

  //texto
  void texto(PFont font, color ct, int sizeT) {
    fill (ct);
    textFont (font);
    textSize (sizeT);
  }

  //actualizar()
  void update () {
    for (int i = 0; i<c; i++) {
      fuego [i].update();
    }

    //deduzco si hay colision
    // jugador.colision(fuego, fondo, fondo);
    fondo.actualizar();
  }

  //dibujar()
  void draw () {

    fondo.draw();

    jugador.dibujar();
    //jugador.dibujar(fondo);

    for (int i = 0; i<c; i++) {
      fuego [i].draw();
      //fuego [i].draw(fondo);
    }
  }


  //resetear()
  void reciclar() {
    for (int i = 0; i<c; i++) {
      fuego [i].draw();
    }
    vidas = 3;

    begin = millis();
    time=duracion=10;
  }

  void teclado (int k) {
    jugador.mover(k);
  }

  /*void click() {
   fondo.click(fondo);
   }*/

  void click1() {
    fondo.click1();
  }

  void key() {
    fondo.key(fondo);
  }
}
