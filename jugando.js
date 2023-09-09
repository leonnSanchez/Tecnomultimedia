function pantallaJugando() {
  image(imagen,0,0,600,600);


  yreloj += velreloj;
  if ( yreloj > width+rreloj ) {
    yreloj = -rreloj-random(50, 100);
    xreloj = random( rreloj, width-rreloj);
    
   
    cayo++;
    if (  cayo>=3 ){
     //perdi:
     estado = 2;
    }
  }


  xekko+=velekko;
  
  xekko = constrain( xekko, 0+rekko, width-rekko);




  push();
  fill(180);
  ellipseMode(CENTER);
  noFill();
  noStroke();
  ellipse(xreloj, yreloj, rreloj*2, rreloj*2);
  image ( reloj,xreloj-30, yreloj-30,60,60);
  pop();

  push();
  
  ellipseMode(CENTER);
  noFill();
  noStroke();
  ellipse(xekko, yekko, rekko*2, rekko*2);
 
  image(ekko,xekko-55,yekko-60,120,120);
  pop();
  

  push();
  fill(255);
  textSize(17);
  textAlign(LEFT);
  text("relojes obtenidos: " + agarre,20,20);
  text("se cayeron: " + cayo,20,40);
  pop();
  
  //evaluo colision:
  
  
  if ( dist(xekko, yekko, xreloj, yreloj) <= rreloj+rekko ) {
    
     
    xreloj = random(rreloj, width-rreloj);
    yreloj = -rreloj-random(50,100);
    
   
    agarre++;
    
    
    if ( agarre>=7 ) {
      //gano: (cambia de estado)
      estado = 3;
    }
    
  }
}
