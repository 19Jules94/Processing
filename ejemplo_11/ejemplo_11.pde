float x = 0; //<>//

void setup () {

  size(400, 300);
}

void draw() {

  background(0);

  /*
    Si ejecutamos este codigo ,el circulo ya aparece en el borde de la pantalla,
   esto se debe a que el bucle se ejecuta primero,es decir se ejecuta x = x+1 hasta que llega al borde
   */
  /*
  while(x < width){
   
   
   x = x+1;
   }
   
   fill(101);
   stroke(255);
   ellipse(x,150,16,16);
   */


  /*
   Este codigo dibuja un trazo formado por todos los circulos,
   es decir el bucle repite tantos circulos hasta llegar a la anchura
   */


  /*
  x=0;
   while (x < width) {
   
   
   x = x+1;
   
   fill(101);
   stroke(255);
   ellipse(x, 150, 16, 16);
   }
   */
  x=0;
  while (x < width) {

    if (mouseX < 1) {

      x = x + 1;
    } else {

      x = x+mouseX;
    }


    fill(101);
    stroke(255);
    ellipse(x, 150, 16, 16);
  }


  //fill(101);
  //stroke(255);
  //ellipse(x, 150, 16, 16);
}
