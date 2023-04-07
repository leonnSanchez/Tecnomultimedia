 //nombre:Leonardo gaston sanchez      tp0-comision 3
PImage imagen;
void setup(){
 imagen = loadImage("Data/Foto.jpg");
 size (800,400);
 background (#10498E);
}
void draw(){
 ellipse(800,400,100,100);
 image (imagen, 400, 0, 400, 400);
 //respaldo de la silla
 fill(50);
 rect(40,140,320,400);
 //cuerpo
 fill(#FCE9BF);
 rect(160,310,80,60);
 fill(#AAA7A7);
 triangle(90,400,310,400,200,350);
 rect(150,350,100,30,30);
 //orejas
 fill(#DED398);
 ellipse(78,180,30,73);
 ellipse(322,180,30,73);
 //cabeza
 fill(#FCE9BF);
 ellipse(200,180,250,310);
 //nariz punta
 fill(#DED398);
 ellipse(203,222,35,20);
 //nariz costados
 fill(#DED398);
 triangle(173,225,235,225,201,170);
 //nariz base
 fill(#DED398);
 rect(188,165,30,60);
 //ojo izq
 fill(0);
 ellipse(140,150,60,80);
 fill(255);
 ellipse(140,150,50,70);
 //pupila ojo izq
 fill(#764C08);
 ellipse(140,150,32,42);
 fill(0);
 ellipse(140,150,20,30);
 fill(255);
 ellipse(140,150,10,10);
 ellipse(133,140,12,12);
 //ojo derecho
 fill(0);
 ellipse(260,150,60,80);
 fill(255);
 ellipse(260,150,50,70);
 //pupila ojo der
 fill(#764C08);
 ellipse(260,150,32,42);
 fill(0);
 ellipse(260,150,20,30);
 fill(255);
 ellipse(260,150,10,10);
 ellipse(253,140,12,12);

 //ceja izq
 fill(0);
 rect(110,100,70,7);
 triangle(105,100,125,100,93,115);
 // ceja derech
 fill(0);
 rect(220,100,70,7);
 fill(0);
 triangle(295,100,275,100,307,115);
 //boca

 bezier(140,259,140,300,260,300,260,259);
 //pelo
 fill(#1C1B1B);
 triangle(295,110,330,130,300,185);
 triangle(325,90,300,130,380,130);
 triangle(265,80,320,50,340,185);
 triangle(210,95,230,20,370,68);
 triangle(140,90,160,13,320,30);
 triangle(100,99,120,40,50,110);
 triangle(85,50,130,24,76,150);
 triangle(90,30,110,100,230,10);
 triangle(76,150,85,120,100,158);
 //arito
 fill(#C4C4C4);
 rect(323,205,10,21,5);
}
