
void setup() {
  size(640, 360);
  background(50);
  /*
  Si ponemos el fondo en setup este no se recarga y por lo tanto aprece el rastro de los rectangulos
   */
}

void draw() {

  // background(50);

  stroke(255);

  //dibuja un rectangulo en la posicion que este el raton pero al reves,al estar arriba lo dibuja abajo y viceversa y lo mismo pasa con la izquierda y con la derecha
  //rect(height-mouseX, height-mouseY, 100, 50);                                               
  line(pmouseX, pmouseY, mouseX, mouseY);//dibuja un rectangulo en la posicion que este el raton
}
void mousePressed() {

  background(50);
}

void keyPressed() {
  
  //Se generan 3 numero random con valor maximo 255,
  //cada vez que se pulsa una tecla cambia de color
  int a=(int) random(0, 255);
  int b=(int) random(0, 255);
  int c=(int) random(0, 255);

  background(a, b, c);
}
