
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
  line(pmouseX, pmouseY, mouseX,mouseY);//dibuja un rectangulo en la posicion que este el raton
}
