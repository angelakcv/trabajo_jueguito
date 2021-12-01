class Aventura {
    PFont font1, font2;
  Fondo [] fondoAv = new Fondo [9];
  
  Texto dialogos;
  Boton botonIniciar, botonCredito, botonSig, boton1, boton2, boton3, botonHuir, botonLlevar, botonSi, botonNo, botonVolver;
  
  Personaje [] persAv = new Personaje [20];
  
  //propiedades
  int pantalla = 0;

  //Constructor
  Aventura() {
    //Fondos de aventura
    for (int i = 0; i < fondoAv.length; i++){
      fondoAv[i] = new Fondo("fon_0" + i);
    }

    //Botones
    botonIniciar = new Boton("Iniciar", width/2, 200, 200, 80, 35);
    botonCredito = new Boton("Créditos", 70, 360, 80, 70, 25);
    botonSig = new Boton("Siguiente", 735, 370, 120, 40, 20);
    boton1 = new Boton("Camino 1", 110, 80, 110, 70, 30);
    boton2 = new Boton("Camino 2", 110, 165, 110, 70, 30);
    boton3 = new Boton("Camino 3", 110, 250, 110, 70, 30);
    botonHuir = new Boton("Huir", 150, 80, 110, 70, 30);
    botonLlevar = new Boton("Llevarse \n el huevo", 650, 80, 110, 70, 30);
    botonSi = new Boton("SI", 150, 80, 110, 70, 30);
    botonNo = new Boton("NO", 650, 80, 110, 70, 30);
    botonVolver = new Boton("Volver", 735, 370, 120, 40, 20);

    //Texto/dialogo
    dialogos = new Texto();
  
    //Personajes
    for( int i = 0; i < persAv.length; i++){
      persAv[i] = new Personaje("per_0" + i);
    }
   
  }

  //Metodos
  void dibujar() {
   // println(pantalla);
    switch(pantalla) {
    case 0:
      //Fondo
      fondoAv[0].dibujarFondo(0, 0, width, height);

      //Text
      dialogos.textoD("El ingrediente misterioso", dialogos.getFont1(), width/2, 100, 255, 80, CENTER);

      //botones INICIAR/Créditos
      botonIniciar.actualizar();
      botonCredito.actualizar();
      break;

    case 1:
      //Fondo
      fondoAv[1].dibujarFondo(0, 0, width, height);
      
      //Personaje
      persAv[0].dibujarPer1( -100, -50);

      //Texto
      dialogos.recTexto(0, 70, 290, 100, 50);
      dialogos.textoD("Fenris", dialogos.getFont2(), width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(0, width/2, 350, width, 100);
      dialogos.textoD("Dana, tengo que irme de viaje por unos días, debes de hacer un \n hechizo de barrera de protección para que La Torre este protegida \n en mi ausencia", dialogos.getFont1(), 400, 330, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 2:
      //Fondo
      fondoAv[1].dibujarFondo(0, 0, width, height);
      
      //Personaje
      persAv[4].dibujarPer1( 50, -10);

      //Texto
      dialogos.recTexto(color(0), 70, 290, 100, 50);
      dialogos.textoD("Dana", dialogos.getFont2(), width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 350, width, 100);
      dialogos.textoD("Ok, necesitamos pelo de unicornio, lágrima de hada, hueso de \n dragón y...no se ve el último ingrediente", dialogos.getFont1(), 400, 330, 255, 25, CENTER);

      //Boton siguiente
      botonSig.actualizar();
      break;

    case 3:
      //Fondo
      fondoAv[1].dibujarFondo(0, 0, width, height);
      
      //Personaje
      persAv[2].dibujarPer2( -150, -130, 700, 700);

      //Texto
      dialogos.recTexto(color(0), 70, 290, 100, 50);
      dialogos.textoD("Estarossa", dialogos.getFont2(), width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 350, width, 100);
      dialogos.textoD("Ni modo, tenemos que salir a buscar el último ingrediente, uno \n que luzca fundamental y especial", dialogos.getFont1(), 400, 330, 255, 25, CENTER);

      //Boton siguiente
      botonSig.actualizar();
      break;

    case 4:
      //Fondo
      fondoAv[0].dibujarFondo(0, 0, width, height);
      
      //Personaje
      persAv[1].dibujarPer2( 500, 30, 300, 300);

      //Texto
      dialogos.recTexto(color(0), 70, 350, 100, 50);
      dialogos.textoD("Dana", dialogos.getFont2(), width/11, 350, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 380, width, 60);
      dialogos.textoD("¿Qué camino deberíamos escoger?", dialogos.getFont1(), 400, 380, 255, 25, CENTER);

      //3 botones de caminos (Camino 1,2 3)
      boton1.actualizar();
      boton2.actualizar();
      boton3.actualizar();
      break;

    case 5:
      //Fondo
      fondoAv[2].dibujarFondo(0, 0, width, height);
      
      //Personaje
      persAv[5].dibujarPer1( 0, 50);
      persAv[7].dibujarPer2( 400, 170, 395, 204);
    
      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 6:
      //Fondo
      fondoAv[2].dibujarFondo(0, 0, width, height);
      
      //Personaje
      persAv[5].dibujarPer1( 0, 50);
      persAv[7].dibujarPer2( 400, 170, 395, 204);
      
      //Texto
      dialogos.recTexto(color(0), 70, 330, 110, 50);
      dialogos.textoD("Ganso", dialogos.getFont2(), 70, 330, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 370, width, 70);
      dialogos.textoD("Cuack cuack \n (Nadie puede acercarse al gran huevo)", dialogos.getFont1(), width/2, 370, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 7:
      //Fondo
      fondoAv[2].dibujarFondo(0, 0, width, height);
      
      //Personaje
      persAv[2].dibujarPer2( 200, -90, 700, 700);
      persAv[1].dibujarPer2( 150, 40, 300, 300);
      
      //Texto
      dialogos.recTexto(color(0), 70, 330, 100, 50);
      dialogos.textoD("Dana", dialogos.getFont2(), 70, 330, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 370, width, 70);
      dialogos.textoD("No sé que dice pero ¿qué hacemos?", dialogos.getFont1(), width/2, 370, 255, 25, CENTER);

      //botones Huir/Llevarse el huevo
      botonHuir.actualizar();
      botonLlevar.actualizar();
      break;

    case 8:
      //Fondo
      fondoAv[2].dibujarFondo(0, 0, width, height);
      
      //Personaje
      persAv[8].dibujarPer1( 150, -30);
      persAv[7].dibujarPer2( 400, 170, 395, 204);
      persAv[2].dibujarPer2( -200, -100, 700, 700);
      
      //Texto
      dialogos.recTexto(color(0), 70, 330, 100, 50);
      dialogos.textoD("Estarossa", dialogos.getFont2(), 70, 330, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 370, width, 70);
      dialogos.textoD("Nooo, el huevo se rompió y se abrió un portal", dialogos.getFont1(), width/2, 370, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 9:
      //Fondo
      fondoAv[8].dibujarFondo( 0, 0, width, height);
      
      //Personaje
      persAv[9].dibujarPer2( 300, 200, 20, 29);
      persAv[2].dibujarPer2( 100, 30, 80, 80);
      
      //Texto
      dialogos.recTexto(color(0), width/2, 370, width, 70);
      dialogos.textoD(".", dialogos.getFont2(), 0, 0, 255, 25, CENTER);
      dialogos.textoD("Estarossa: Lindo lugar ¿no crees? \n Dana: Cállate", dialogos.getFont1(), width/2, 370, 255, 25, CENTER);

      //botones Otra vez/Créditos
      botonCredito.actualizar();
      botonVolver.actualizar();
      break;

    case 10:
      //Fondo
      fondoAv[3].dibujarFondo( 0, 0, width, height);
      
      //Personaje
      persAv[11].dibujarPer1( -20, 0);
      
      //Texto
      dialogos.recTexto(color(0), 70, 290, 100, 50);
      dialogos.textoD("Estarossa", dialogos.getFont2(), width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 350, width, 100);
      dialogos.textoD("No te acerques Dana, él es Mael, hizo algo gatastrófico, él... se \n comió mis Whiskas", dialogos.getFont1(), 400, 330, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 11:
      //Fondo
      fondoAv[3].dibujarFondo( 0, 0, width, height);
      
       //Personaje
      persAv[12].dibujarPer1( 150, 0);
      
      //Texto
      dialogos.recTexto(color(0), 70, 290, 100, 50);
      dialogos.textoD("Mael", dialogos.getFont2(), width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 350, width, 100);
      dialogos.textoD("Yo no me comí tus Whiskas, para ese tiempo yo estaba de viaje en \n Camelot", dialogos.getFont1(), 400, 330, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 12:
      //Fondo
      fondoAv[3].dibujarFondo( 0, 0, width, height);
      
       //Personaje
      persAv[2].dibujarPer2( -150, -130, 700, 700);
      
      //Texto
      dialogos.recTexto(color(0), 70, 290, 100, 50);
      dialogos.textoD("Estarossa", dialogos.getFont2(), width/11, 290, 255, 20, CENTER);
      dialogos.recTexto(color(0), width/2, 350, width, 100);
      dialogos.textoD("Ah, tienes razón... de todos modos, estamos buscando un ingrediente \n secreto", dialogos.getFont1(), 400, 330, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 13:
      //Fondo
      fondoAv[4].dibujarFondo( 0, 0, width, height);
      
      //Personaje
      persAv[10].dibujarPer1(250, 40);
      
      //Texto
      dialogos.recTexto(color(0), 70, 290, 100, 50);
      dialogos.textoD("Mael", dialogos.getFont2(), width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 350, width, 100);
      dialogos.textoD("Tsss ¿ingrediente secreto? Secreto es este lugar JAJAJA... \n ups, se supone que no podía decirlo", dialogos.getFont1(), 400, 330, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 14:
      //Fondo
      fondoAv[5].dibujarFondo(0, 0, width, height);
      
      //Personaje
      persAv[13].dibujarPer1(250, 10);
      
      //Texto
      dialogos.recTexto(color(0), 70, 290, 100, 50);
      dialogos.textoD("Carbonilla", dialogos.getFont2(), width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 350, width, 100);
      dialogos.textoD("Bienvenidos al Mundo Ghibli, un mundo mágico y secreto donde puedes \n encontrar de todo, así que ¿en qué los puedo ayudar?", dialogos.getFont1(), 400, 330, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 15:
      //Fondo
      fondoAv[5].dibujarFondo( 0, 0, width, height);
      
      //Personaje
      persAv[1].dibujarPer2( 30, 20, 300, 300);
      
      //Texto
      dialogos.recTexto(color(0), 70, 290, 100, 50);
      dialogos.textoD("Dana", dialogos.getFont2(), width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 350, width, 100);
      dialogos.textoD("Hola, tengo que hacer un hechizo de una barrera de protección, pero \n no sé cual es el último ingrediente", dialogos.getFont1(), 400, 330, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 16:
      //Fondo
      fondoAv[5].dibujarFondo( 0, 0, width, height);
      
      //Personaje
      persAv[14].dibujarPer1( 250, 10);
      
      //Texto
      dialogos.recTexto(color(0), 70, 290, 100, 50);
      dialogos.textoD("Carbonilla", dialogos.getFont2(), width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 350, width, 100);
      dialogos.textoD("¡Ajá! Este es el ingrediente multifuncional, es una poción \n que puede reemplazar a cualquier elemento", dialogos.getFont1(), 400, 330, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 17:
      //Fondo
      fondoAv[5].dibujarFondo( 0, 0, width, height);
      
      //Personaje
      persAv[2].dibujarPer2( -150, -130, 700, 700);
      
      //Texto
      dialogos.recTexto(color(0), 70, 290, 100, 50);
      dialogos.textoD("Estarossa", dialogos.getFont2(), width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 350, width, 100);
      dialogos.textoD("Es perrrfecto, muchas gracias, ahora Dana podrá hacer el hechizo \n y así proteger La Torre", dialogos.getFont1(), 400, 330, 255, 25, CENTER);

      //botones Otra vez/Créditos
      botonVolver.actualizar();
      break;

    case 18:
      //Fondo
      fondoAv[6].dibujarFondo( 0, 0, width, height);
      
      //Personaje
      persAv[1].dibujarPer2( 30, 50, 300, 300);
      
      //Texto
      dialogos.recTexto(color(0), 70, 330, 110, 50);
      dialogos.textoD("Dana", dialogos.getFont2(), 70, 330, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 370, width, 70);
      dialogos.textoD("Parece que hay un campamento aquí", dialogos.getFont1(), width/2, 370, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 19:
      //Fondo
      fondoAv[6].dibujarFondo( 0, 0, width, height);
      
      //Personaje
      persAv[16].dibujarPer1( 250, 10);
      
      //Texto
      dialogos.recTexto(color(0), 70, 290, 110, 50);
      dialogos.textoD("Fueguito", dialogos.getFont2(), 70, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), 400, 350, width, 90);
      dialogos.textoD("¡No!¡Ayúdame! Dame madera, hojas secas algo que sirva por favor \n o si no me consumiré y moriré", dialogos.getFont1(), 400, 340, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 20:
      //Fondo
      fondoAv[6].dibujarFondo( 0, 0, width, height);
      
      //Personaje
      persAv[2].dibujarPer2( -150, -110, 700, 700);
      
      //Texto
      dialogos.recTexto(color(0), 70, 330, 110, 50);
      dialogos.textoD("Estarossa", dialogos.getFont2(), 70, 330, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 370, width, 70);
      dialogos.textoD("¿Ayudamos?", dialogos.getFont1(),  width/2, 370, 255, 25, CENTER);

      //botones Sí/No
      botonSi.actualizar();
      botonNo.actualizar();
      break;

    case 21:
      //Fondo
      fondoAv[6].dibujarFondo( 0, 0, width, height);
      
      //Personaje
      persAv[17].dibujarPer1( 250, 10);
      
      //Texto
      dialogos.recTexto(color(0), 70, 330, 110, 50);
      dialogos.textoD("Fueguito", dialogos.getFont2(),70, 330, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 370, width, 70);
      dialogos.textoD("*Ñam ñam ñam*", dialogos.getFont1(),  width/2, 370, 255, 25, CENTER);
      
      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 22:
      //Fondo
      fondoAv[6].dibujarFondo( 0, 0, width, height);
      
      //Personaje
      persAv[18].dibujarPer1( 250, 10);
      
      //Texto
      dialogos.recTexto(color(0), 70, 290, 100, 50);
      dialogos.textoD("Calcifer", dialogos.getFont2(), width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 350, width, 100);
      dialogos.textoD("JAJAJA pequeños ilusos, soy Calcifer, el demonio fuego, ahora que \n estoy en forma podré apoderarme de La Torre JAJAJA", dialogos.getFont1(), 400, 330, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 23:
      //Aqui va el jueguito
      
      //Fondo
      fondoAv[7].dibujarFondo( 0, 0, width, height);
      
      //Texto
      dialogos.recTexto(color(0, 100), width/2, 380, width, 70);
      dialogos.textoD("Evita los ataques: <- ->", dialogos.getFont2(),  width/2, 380, 255, 20, CENTER);


      break;

    case 24:
      //No/Perder
      
      //Fondo
      fondoAv[6].dibujarFondo( 0, 0, width, height);
      
      //Personaje
      persAv[1].dibujarPer2( 30, 10, 300, 300);
      persAv[2].dibujarPer2( 0, -100, 700, 700);
      
      //Texto
      dialogos.recTexto(color(0), 70, 330, 110, 50);
      dialogos.textoD("Dana", dialogos.getFont2(), 70, 330, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 370, width, 70);
      dialogos.textoD("No quiero enfrentarme a eso, mejor vámonos", dialogos.getFont1(), width/2, 370, 255, 20, CENTER);
      
      //boton volver a pantalla caminos (4)
      botonVolver.actualizar();
      break;

    case 25:
      //Pantalla ganar = los fuegos huyeron
      
      //Fondo
      fondoAv[6].dibujarFondo( 0, 0, width, height);
      
      //Texto
      dialogos.recTexto(color(0, 100), width/2, height/2, width, 100);
      dialogos.textoD(".", dialogos.getFont2(), 0, 0, 255, 20, CENTER);
      dialogos.textoD("¡Felicidades! Lograste esquivar los ataques del demonio fuego, \n Calcifer, pero aún así, este no es el camino correcto", dialogos.getFont1(), width/2, height/2, 255, 35, CENTER);

      //botones Otra vez/Créditos
      botonCredito.actualizar();
      botonVolver.actualizar();
      break;

    case 26:
      //Fondo
      fondoAv[0].dibujarFondo( 0, 0, width, height);
      
      //Texto
      dialogos.textoD(".", dialogos.getFont1(), width/2, 100, 255, 80, CENTER);
      dialogos.textoD("El ingrediente misterioso", dialogos.getFont2(), width/2, 100, 255, 20, CENTER);

      dialogos.textoD("PERSONAJES", dialogos.getFont2(), width/2, 130, 255, 20, LEFT);
      dialogos.textoD("Fenris, el elfo \n Dana, la aprendiz de magia \n Salem, el gato \n Mael, el otro gato", dialogos.getFont2(), 80, 160, 255, 20, LEFT);
      dialogos.textoD("El ganso \n La carbonilla \n Calcifer, el demonio fuego", dialogos.getFont2(), 450, 160, 255, 20, CENTER);

      dialogos.textoD("DATOS", dialogos.getFont2(), width/2, 240, 255, 20, LEFT);
      dialogos.textoD("Prof. Matias Jauregui Lorda \n Comisión 2", dialogos.getFont2(), 80, 270, 255, 20, LEFT);
      dialogos.textoD("Ibañez, Magalí Luz \n 88140/8 \n Calizaya Villamonte, Angela \n 88298/2", dialogos.getFont2(), 450, 270, 255, 20, LEFT);
      
     //dialogos.textoD("Presiona 'r' para reiniciar el juego", dialogos.getFont2(), 100, 390, 70, 30, LEFT);

      //Volver a pantalla principal (0)
      botonVolver.actualizar();
      break;
    }
  }

  void click() {
    switch(pantalla) {
    case 0:
      println("pantalla = 0");
      if (botonIniciar.mouseEstaEncima()) {
        pantalla = 1;
      } else if (botonCredito.mouseEstaEncima()) {
        pantalla = 26;
      }
      break;
    case 1:
      println("pantalla = 1");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 2;
      }
      break;      
    case 2:
      println("pantalla = 2");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 3;
      }
      break;
    case 3:
      println("pantalla = 3");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 4;
      }
      break;
    case 4:
      println("pantalla = 4");
      if (boton1.mouseEstaEncima()) {
        pantalla = 5;
      } else if (boton2.mouseEstaEncima()) {
        pantalla = 10;
      } else if (boton3.mouseEstaEncima()) {
        pantalla = 18;
      }
      break;      
    case 5:
      println("pantalla = 5");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 6;
      }
      break;      
    case 6:
      println("pantalla = 6");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 7;
      }
      break;     
    case 7:
      println("pantalla = 7");
      if (botonHuir.mouseEstaEncima()) {
        pantalla = 4;
      } else if (botonLlevar.mouseEstaEncima()) {
        pantalla = 8;
      }
      break;      
    case 8:
      println("pantalla = 8");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 9;
      }
      break;     
    case 9:
      println("pantalla = 9");
      if (botonCredito.mouseEstaEncima()) {
        pantalla = 26;
      }else if (botonVolver.mouseEstaEncima()) {
        pantalla = 0;
      }
      break;
      
    case 10:
      println("pantalla = 10");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 11;
      }
      break;
    case 11:
      println("pantalla = 11");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 12;
      }
      break;
    case 12:
      println("pantalla = 12");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 13;
      }
      break;
    case 13:
      println("pantalla = 13");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 14;
      }
      break;
    case 14:
      println("pantalla = 14");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 15;
      }
      break;
    case 15:
      println("pantalla = 15");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 16;
      }
      break;
    case 16:
      println("pantalla = 16");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 17;
      }
      break;
    case 17:
      println("pantalla = 17");
      if (botonVolver.mouseEstaEncima()) {
        pantalla = 0;
      }
      break;
      
    case 18:
      println("pantalla = 18");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 19;
      }
      break;
    case 19:
      println("pantalla = 19");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 20;
      }
      break;
    case 20:
      println("pantalla = 20");
      if (botonSi.mouseEstaEncima()) {
        pantalla = 21;
      } else if (botonNo.mouseEstaEncima()) {
        pantalla = 24;
      }
      break;
    case 21:
      println("pantalla = 21");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 22;
      }
      break;
    case 22:
      println("pantalla = 22");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 23;
      }
      break;
    case 23:
      println("pantalla = 23");
      if (botonVolver.mouseEstaEncima()) {
       // pantalla = 0;
       pantalla = 25;
      }
      break;
    case 24:
      println(pantalla = 24);
      if (botonVolver.mouseEstaEncima()) {
        pantalla = 4;
      }
      break;
    case 25:
      println("pantalla = 25");
      if (botonCredito.mouseEstaEncima()) {
        pantalla = 26;
      }else if (botonVolver.mouseEstaEncima()) {
        pantalla = 0;
      }
      break;
    case 26:
      println("pantalla = 26");
      if (botonVolver.mouseEstaEncima()) {
        pantalla = 0;
      }
      break;
    default:
      println("no se encontro pantalla");
      break;
    }
  }
}
