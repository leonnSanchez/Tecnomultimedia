// Leonardo Sanchez-- comision 3 tp 2
  //video en youtube de la presentacion https://www.youtube.com/watch?v=bc6zdu3DIhI
  PImage obra;
  float s = 0.90;
  float x;
  color colorprimario = color(255);
  color b = colorprimario;
  color n = color(0);
  boolean rotar = false;
  float xprimera;
  
  void setup() {
    size(800, 400);
    obra = loadImage("obra.png");
    x = 0;
    xprimera = x;
    rectMode(RADIUS);
  }
  
  void draw() {
    background(n);
  
    push();
    translate(600, 200);
    if (rotar) {
      rotate(x--/100);
    }
    
    laCosaqueGira();
  
    
    pop();
    image(obra, 0, 0, 400, 400);
    
    // Llamada a la función que retorna un valor
    float xoxo = calculaPromediodeEsc();
    println("escala: " + xoxo);
  }
  
  void keyPressed() {
    if (key == 'c') {
      b = color(random(100, 255), random(100, 255), random(100, 255));
    }
  }
  
  void mouseClicked() {
    rotar = !rotar;
    if (rotar) {
      x = xprimera;
    } else {
      b = color(255);
    }
    calculaPromediodeEsc();
  }
  
  // Función que calcula y retorna el promedio de escala
