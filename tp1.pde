//Leonargo Gaston Sanchez--tp1  


float textoMovX,grandote,textoMovY;
int contador; //pasan los segundos para cambiar la pantalla
int estado,opacidad;

PImage nft,foto,foto1,foto2,foto3,foto4,empezar,foto5,fin;
PFont mifont;

void setup() {
   size( 640, 480 );  //resolucion tp1
  estado = 0;
  empezar = loadImage("empezar.jpg");
  nft = loadImage("data/NFT.jpg");
  foto = loadImage("Foto.png");
  foto2 = loadImage("foto2.jpeg");
  foto3 = loadImage ("foto3.jpg");
  foto4 = loadImage ("foto4.png");
  foto5 = loadImage ("foto5.png");
  fin = loadImage ("fin.jpg");
  mifont = loadFont("VCROSDMono-48.vlw");
  textoMovX = 0;
  grandote = 0;
  textoMovY = 0;
  
  opacidad = 0;
}

void draw() {
  textFont(mifont);
  int diferenciaTemporal = millis() - contador;

  //comienzo de estados
  
  if (estado ==0){
    image(empezar,0,0,640,480);
    fill(255);
    textSize(40);
    text("tp1",5,33);
    text("ENTRA AL CASTILLO!!",140,220);
    fill(0);
    
    
    ellipse(265,420,23,62);
    if (mousePressed){
      if (dist (265,420,mouseX,mouseY) < 80/2){
        fill(0);
        ellipse(265,420,23,62);
        estado=1;
        contador=millis();
        
      }
    }
  }

      
      
      
  if (estado == 1){
  image(nft,0,0,640,480);
  grandote = grandote + 1;  //aumenta 0.4 el tamaño en velocidad
  if (grandote >= 30){ //cuando grandote es mayor o igual a 30
    grandote = 30;  //no sobrepasa los 30
  }
   textSize (grandote);
   textAlign(CENTER,CENTER);
   fill(0);
  text ("CRYPTOPUNKS AVATARES PIXELEADOS",width/2, 235);
    
     
  if (diferenciaTemporal>=8000){  //cada mil es 1 segundo
  
    estado = 2;
    contador=millis();
    grandote=0;
    
    
  }
   }else if (estado==2){
     textoMovX = textoMovX + 1.50; //velocidad de movimiento del texto
     
     if (textoMovX >= width/2) {
       textoMovX = width/2;
       
       
     }
     
   image (foto,0,0,640,480);
   textSize(25);
   fill(255);
   text("los personajes, inicialmente disponibles\n de forma gratuita ahora se subastan\n a multimillonarios ansiosos\n por hasta 11.7 millones de dólares",textoMovX, height/2);
   textAlign(CENTER, CENTER);
   
   if (diferenciaTemporal>=8000){ 
   
     estado=3;
     contador=millis();
     textoMovX = 0;
   }
   }else if (estado==3){
     textoMovY = textoMovY + 1.50;
     if (textoMovY >= 390){
       textoMovY = 390;
     
     }
     image (foto2,0,0,640,480);
     textSize(22);
     fill(255);
      text("LOS CRYPTOPUNKS SE ENCUENTRAN ENTRE \nLOS NFT MAS FAMOSOS, UN TIPO DE ARTE GENERADO\n POR COMPUTADORA ALMACENADO\n EN LA CADENA DE BLOQUES ETHEREUM",width/2 , textoMovY);
     if (diferenciaTemporal>8000){ 
     
     estado=4;
     contador=millis();
     textoMovY= 480;
   }
   }else if (estado==4){
     
     textoMovY = textoMovY - 0.85;
     if(textoMovY<=370){
       textoMovY = 370;
     }
     image (foto3,0,0,640,480);
     textSize(22);
     fill(0);
     opacidad = opacidad + 1;
     fill(255,opacidad);
     text("Estos 10,000 personajes únicos valen\ncasi 400 millones de dólares: \n el CryptoPunk más barato cuesta\n 37,638 dólares.",325,textoMovY );
    
     textSize(22);
     text(" Sin embargo, solo una\n persona puede ser propietaria\n de un CryptoPunk original, y\n millonarios de todo el mundo \n claman por el título.",320 , 100);
     
     
     if (diferenciaTemporal>8000){
       
       
       estado=5;
       contador=millis();
       textoMovY=480;
       opacidad=0;
     }
   }else if(estado==5){ 
      textoMovX = textoMovX + 1.50; //velocidad de movimiento del texto
     
     if (textoMovX >= width/2) {
       textoMovX = width/2;
     }
     
     image(foto4,0,0,640,480);
   textSize(28);
     text("El multimillonario Shalom Meckenzie\n acaba de comprar un raro avatar\n de Covid Alien por más\n de 11.7 mdd.",textoMovX, height/2);
     textAlign(CENTER, CENTER);
     if(diferenciaTemporal>8000){
       
       estado=6;
       contador=millis();
       
     }
     
   }else if(estado==6){
      textoMovY = textoMovY - 1.30;
     if(textoMovY<=100){
       textoMovY = 100;
     
     }
     image(foto5,0,0,640,480);
     textSize(21);
     text(" La mayoría de los 10.000 punks totales son humanos,\n pero también hay tres tipos especiales: \nZombie (88), Mono (24) y Alien (9)",width/2,textoMovY);
     textAlign (CENTER,CENTER);
     if (diferenciaTemporal>8000){
       
       estado=7;
       contador=millis();
       textoMovY=0;
     }
   }
   if( estado== 7){
     image(fin,0,0,640,480);
     fill(255);
     textSize(50);
     text("FIN!",64,70);
     textSize(15);
     fill(255);
     text("volver a reproducir!",157,155);
     fill(#FCBB36);
     
     
      circle(148,99,59);
    if (mousePressed){
      if (dist (148,99,mouseX,mouseY) < 80/2){
        fill(#FCBB36);
        circle(148,99,59);
        estado=1;
        contador=millis();
        textoMovX = 0;
        
      }
    }
   }
     
     
   println(millis() + "-"+contador+"="+diferenciaTemporal);
}


   

 
