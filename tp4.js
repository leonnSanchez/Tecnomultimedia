//leonardo sanchez 
// video;   https://www.youtube.com/watch?v=aDd12KneX4w

let imagen;
let jinx;
let ganaste;
var estado = 0;
var ekko;
let Yc=0;
let d=100;
let reloj; 
let inicio;


var xreloj, yreloj, rreloj, velreloj;


var xekko, yekko, rekko, velekko;


var agarre, cayo;

//
function setup() {
  createCanvas(600, 600);
}
function preload(){
  imagen = loadImage('assets/zaun.jpg');
  jinx = loadImage('assets/jinx.jpg');
   ganaste = loadImage('assets/ganaste.jpg');
   ekko = loadImage('assets/ekko.png')
   reloj = loadImage('assets/bola.png')
   inicio = loadImage ('assets/inicio.jpeg');

}

function draw() {
  background(255, 0, 0);
  if ( estado==0 ) {
    //inicio
    pantallaInicio();
  } else  if ( estado==1 ) {
    //jugando
    pantallaJugando();
  } else  if ( estado==2 ) {
    //perdio
    pantallaPerdio();
    botonesFinales();
  } else  if ( estado==3 ) {
    //gano
    pantallaGano();
    botonesFinales();
  } else if ( estado==4 ) {
    //creditos
    pantallaCreditos();
  }
}
function botonesFinales(){
  for(let i = 0; i < 2; i++){
    textAlign(CENTER,CENTER);
    textSize(20);
    fill(255,0,0);              
    noStroke();
    ellipse(200 + 200 * i,400,d);
    fill(255);
    text("CRED", 200,400);
    text("RESET", 400,400);
  }
}

function mousePressed() {
  if ( estado==0 ) {
    //inicio
    estado = 1;
    iniciarJuego();
  } 
    //jugando
  
      if ( estado == 2  && dist(200,400,mouseX,mouseY) < d/2) {         //d es diametro del circulo
    estado = 4;
  } else if ( estado == 2  && dist(400,400,mouseX,mouseY) < d/2) {
    estado = 0;
  } else if ( estado == 3  && dist(200,400,mouseX,mouseY) < d/2) {
    estado = 4;
  } else if ( estado == 3  && dist(400,400,mouseX,mouseY) < d/2) {
    estado = 0;
  } else if (estado == 4){
    estado = 0;
}
  
    

}


function keyPressed() {
  if ( estado==1 ) {
    //jugando
    if ( keyCode === LEFT_ARROW ) {
      velekko = -4;
    }
    if ( keyCode === RIGHT_ARROW ) {
      velekko = 4;
    }
  }
}
function keyReleased() {
  if ( estado==1 ) {
    velekko = 0;
  }
}
