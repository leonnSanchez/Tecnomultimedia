//Leonardo Sanchez- com 3      -tp3-

//https://youtu.be/Ln-NBXk6lL8
int estado=0;
int c= 18;
PImage[] gato = new PImage[c];
float y;

void setup() {
  size (600, 600);
  for ( int i= 0; i< c; i++) {
    gato[i]= loadImage ( "gato" + i + ".png");
  }
}

void draw() {

  switch (estado) {
  case 0:
    image( gato[0], 0, 0, 600, 600);
    textSize(30);
    rect(40, 117, 120, 30);
    fill(255);
    text("Empezar", 43, 140);
    boton (100, 200, 100);
    textSize(100);

    text("X", 76, 232);

    break;

  case 1:
    image (gato[1], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("El gato recien se levanta su siesta, tiene 2 planes pensados\n para el dia de hoy...", 1, 30);
    fill(255);
    text("Ir a caminar", 470, 270);
    text("Ir al bar", 495, 470);

    boton (530, 530, 100);
    textSize(100);
    //restar 24 y sumar 32
    text("A", 504, 562);
    boton(530, 330, 100);
    textSize(100);

    text("B", 504, 362);
    break;

  case 2:
    image (gato[2], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("En el bar se encuentra con la muerte,esta le ofrece\n dos tragos con aspecto raro... ", 50, 30);
    textSize(20);
    text("Rechazarlos y huir", 445, 270);
    text("Aceptar los tragos", 450, 470);
    boton (530, 530, 100);
    textSize(100);

    text("A", 506, 562);
    boton(530, 330, 100);
    textSize(100);

    text("B", 506, 362);
    break;

  case 3:
    image (gato[3], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("Al olfatearlos nota un olor extremadamente\n rico pero no se decide por cual ir de los dos...  ", 50, 30);
    textSize(20);
    text("trago blanco", 445, 270);
    text("Trago rosa", 450, 470);
    boton (530, 530, 100);
    textSize(100);

    text("A", 506, 562);
    boton (530, 330, 100);
    textSize(100);

    text("B", 506, 362);
    break;

  case 4:
    image (gato[4], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("El trago Rosa contenia veneno para gatos y muere...  ", 50, 30);
    boton (530, 530, 100);
    textSize(100);

    text("X", 506, 562);
    break;

  case 5:
    image (gato[5], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("El gato se transformo en un gato del mundo real y quedo \n atrapado en ese cuerpo!!  ", 50, 30);
    boton (530, 530, 100);
    textSize(100);
    //restar 24 y sumar 32
    text("X", 506, 562);
    break;

  case 6:
    image (gato[6], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("Se dirige al bosque y se encuentra con su amada kitty\n que esta le dice para ir a explorar...  ", 50, 30);
    boton (530, 530, 100);
    textSize(100);

    text("X", 506, 562);
    //restar 24 y sumar 32
    break;

  case 7:
    image (gato[7], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("Con un mapa,se dirigen a buscar un tesoro hasta que un \n cartel les llama la atencion...  ", 50, 30);
    boton (530, 530, 100);
    textSize(100);

    text("X", 506, 562);
    break;

  case 8:
    image (gato[8], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("Buscan al gato!! Y una manada de lobos los ve y \n reconoce,rapidamente corren de ellos...  ", 50, 30);
    boton (530, 530, 100);
    textSize(100);

    text("X", 506, 562);
    break;

  case 9:
    image (gato[9], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("Corren de ellos y logran esconderse pero cada vez se acercan\n mas.", 10, 30);
    text("Que deciden hacer?...", 200, 400);
    text("Correr", 275, 470);
    text("Pelear", 45, 470);
    boton (300, 530, 100);
    textSize(100);

    text("X", 275, 560);

    boton(70, 530, 100);
    textSize(100);

    text("X", 45, 562);
    break;

  case 10:
    image (gato[10], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("Pelean contra los lobos! Pero a kitty la atrapan y rodean   ", 40, 30);
    boton (530, 530, 100);
    textSize(100);

    text("X", 506, 562);
    break;

  case 11:
    image (gato[11], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("Kitty muere y gato queda solo... :(   ", 40, 30);
    boton (530, 530, 100);
    textSize(100);

    text("X", 506, 562);
    break;


  case 14:
    image (gato[14], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("Logra escapar del bar ...pero para donde decide correr?  ", 40, 30);
    fill(0);
    text("Izquierda", 490, 470);
    text("Derecha", 37, 470);


    boton (530, 530, 100);
    boton(65, 530, 100);
    textSize(100);
    text(">", 507, 560);
    text("<", 45, 562);
    break;

  case 15:
    image (gato[15], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("Es interceptado por un lobo y lo mata!!  ", 40, 30);
    boton (530, 530, 100);
    break;

  case 16:
    image (gato[16], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("Se encuentra con shrek y burro, logran calmar a gato y\n salen a pasear felices :) ", 40, 30);
    boton (530, 530, 100);
    break;

  case 17:
    fill(0);
    background(#FCB500);
    textSize(30);
    y = y + 2;
    text("FIN ", 200, y);
    if (y > 150) {
      text("TP3 - Leonardo Sanchez", 100, y -150);
    }
    if (y > 250) {
      text("Artista:Leonardo Sanchez ", 100, y -250);
    }
    if (y > 300) {
      text("Programadora:Leonardo Sanchez ", 100, y -300);
    }
    
  
    if (y > 450) {
      text("Gracias por ver, toca para reiniciar\n y buscar otro final", 100, y -450);
    }
    if ( y > 900) {
      botonCuadrado();
    }
  }
}

void mousePressed() {

  //final uno
  if (estado == 0 && zonaCircular(100, 200, 100)) {
    estado = 1;
    //en el bar se encuentra...
  } else if (estado == 1 && zonaCircular(530, 530, 100)) {
    estado= 2;
  } else if (estado == 2 && zonaCircular(530, 530, 100)) {
    estado= 3;
    //muere envenenado
  } else if (estado == 3 && zonaCircular(530, 530, 100)) {
    estado= 4;
  } else if (estado== 4 && zonaCircular(530, 530, 100) ) {
    estado=17;
  }
    //se convierte en gato real
    if (estado == 3 && zonaCircular(530, 330, 20)) {
      estado= 5;
    } else if (estado== 5 && zonaCircular(530, 530, 100) ) {
      estado=17;
    }
  
      ///hablan de la vida...termina que kitty muere
      if (estado == 1 && zonaCircular(530, 330, 20)) {
        estado= 6;
      } else if (estado == 6 && zonaCircular(530, 530, 100)) {
        estado= 7;
      } else if (estado == 7 && zonaCircular(530, 530, 100)) {
        estado= 8;
      } else if (estado == 8 && zonaCircular(530, 530, 100)) {
        estado= 9;
      } else if (estado == 9 && zonaCircular(70, 530, 100)) {
        estado= 10;
      } else if (estado == 10 && zonaCircular(530, 530, 100)) {
        estado= 11;
      }else if (estado== 11 && zonaCircular(530, 530, 100) ) {
    estado=17;
      }


      //muerte se enoja y muere
      if  (estado == 2 && zonaCircular(530, 330, 20)) {
        estado= 12;
      } else if (estado == 12 && zonaCircular(530, 530, 100)) {
        estado= 13;
      }else if (estado== 13 && zonaCircular(530, 530, 100) ) {
    estado=17;
      }
      //logra escapar muere gato
      if (estado == 12 && zonaCircular(530, 330, 20)) {
        estado= 14;
      } else if (estado == 14 && zonaCircular(530, 530, 100)) {
        estado= 15;
      }else if (estado== 15 && zonaCircular(530, 530, 100) ) {
    estado=17;
      }

      //escapa y se encuentra con
      if (estado == 14 && zonaCircular(130, 530, 100)) {
        estado= 16;
      }else if (estado== 16 && zonaCircular(530, 530, 100) ) {
    estado=17;
      }
      //logran esconderse y se encuentra con shrek
      if (estado == 9 && zonaCircular(330, 530, 100)) {
        estado= 16;
      }else if (estado== 16 && zonaCircular(530, 530, 100) ) {
    estado=17;
      } 
      if (estado == 17 && zonaCircular(300, 300, 200)) {
    y = 0;
    estado = 0;
  }
    }
