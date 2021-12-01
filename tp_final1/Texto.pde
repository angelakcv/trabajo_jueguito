class Texto{
  
  //Propiedades
  PFont font1, font2;
  String texto;
  float x, y;
  
  //Constructor
  Texto(){
    font1 = loadFont ("OldLondon-48.vlw");
    font2 = loadFont ("VCROSDMono-48.vlw");
  }
  
  //Getters y Setters
  PFont getFont1(){
    return font1;
  }
  PFont getFont2(){
    return font2;
  }

//Metodos
    void textoD(String texto_,PFont font, float x_, float y_, color ct, int sizeT, int alineacion_) {
    text(texto_, x_, y_);
    x = x_;
    y = y_;
    textAlign(alineacion_);
    fill (ct);
    textFont (font);
    textSize (sizeT);
  }
  //rectangulo donde va el texto y nombre
    void recTexto(color cr, float posXr, float posYr, float wr, float hr) {
      pushMatrix();
      pushStyle();
      fill (cr);
      rectMode(CENTER);
      rect (posXr, posYr, wr, hr);
      popStyle();
      popMatrix();
   }
 }
