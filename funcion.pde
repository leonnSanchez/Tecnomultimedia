

void laCosaqueGira(){
  for (int i = 0; i < 27; i++) {
  for (int j = 0; j < 27; j++) {
    scale(s);
   

    if ((i + j) % 2 == 0) {
      fill(b);
    } else {
      fill(n);
    }

    float radio = (600/2) - (i * 7);
    rect(0, 0, radio, radio);
    rotate(-PI/25);

  }
  }
}
float calculaPromediodeEsc() {
  float totalEscala = 0;
  int count = 0;
  
  for (int i = 0; i < 60; i++) {
    totalEscala += s;
    count++;
  }
  
  return totalEscala / count;
}
