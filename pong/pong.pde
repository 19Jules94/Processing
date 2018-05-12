
float x;
int puntuacion;
float rectSize =360;

float circleX, circleY;

float xSpeed =3, ySpeed =3;
void setup() {


  size(640, 360);
  x = width/2;
  circleX = 40;
  circleY = 40;
}


void draw() {

  tablero();
  jugadores();
  pelota();
}



void tablero() {
  background(0);
  stroke(255);
  strokeWeight(4);
  line(x, 0, x, height);

  textSize(32);
  text(puntuacion, 290, 50); 
  fill(255, 255, 255);
}

void jugadores() {

  fill(255, 255, 255);

  rect(1, 0, 10, height);
  rect(width-20, mouseY, 10, 40);
}


/*
  Funcion de la pelota
 
 */
void pelota() {

  strokeWeight(1);
  fill(255, 100, 0);
  ellipse(circleX, circleY, 15, 15);
  circleX = circleX + xSpeed;
  circleY = circleY + ySpeed;


  if (circleX > width -30 && circleX < width-20 && circleY > mouseY -rectSize/2 && circleY < mouseY+40) {

    xSpeed = xSpeed*-1;
  } 
  if (circleX > width) {
    puntuacion++;
    reset();
  }

  // Si la pelota golpea el muro izquiero ,cambia la direccion de la pelota
  if (circleX < 25) {
    xSpeed *= -1;
  }


  if (circleY > height || circleY <0) {


    ySpeed = ySpeed*-1;// revertimos la velocidad y nos ahorramos la declaracion de abajo
  }
}
void reset() {
  circleX = width/2;
  circleY = height/2;
  circleX = circleX + xSpeed;
  circleY = circleY + ySpeed;
}

void mouseClicked(){
reset();
puntuacion =0;
}
