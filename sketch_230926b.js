//https://www.youtube.com/watch?v=4RhpHwze62U
//leonardo sanchez tp5- com 3
let objJuego;
let estadoJuego = "pantallaInicio"; // Estado inicial del juego

function setup() {
  createCanvas(400, 400);
  objJuego = new Juego(10);
 
}

function draw() {
  background(63,106,1);

  if (estadoJuego === "pantallaInicio") {
    // Pantalla de inicio
    mostrarPantallaInicio();
  } else if (estadoJuego === "juegoEnProgreso") {
    // Juego en progreso
    objJuego.dibujar();

    if (objJuego.todosEnemigosEliminados) {
      mostrarMensajeGanaste();
    }
  }
}

function keyPressed() {
  if (estadoJuego === "pantallaInicio" && key === "e") {
    
    estadoJuego = "juegoEnProgreso";
  } else if (estadoJuego === "juegoEnProgreso") {
    objJuego.teclaPresionada(keyCode);
  }
}

function mostrarPantallaInicio() {
  // Dibuja la pantalla de inicio y un mensaje
  background(0); 
  fill(255); 
  textSize(24);
  textAlign(CENTER, CENTER);
  text("Presiona 'E' para comenzar", width / 2, height / 2);
  text("elimina a todos los lobos",width/2 , height /2 +50);
}

function mostrarMensajeGanaste() {
  background(0,255,0); 
  fill(0); 
  textSize(24);
  textAlign(CENTER, CENTER);
  text("¡Ganaste!", width / 2, height / 2);
}
