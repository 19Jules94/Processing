
float x;
float rectSize =360;

float circleX, circleY;

float xSpeed =2, ySpeed =2;
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
}

void jugadores() {

  fill(255, 255, 255);

  rect(0, 0, 20, height);
  rect(width-30, mouseY-rectSize/2, 10, rectSize);
}

void pelota() {

  strokeWeight(1);
  fill(255, 100, 0);
  ellipse(circleX, circleY, 15, 15);
  circleX = circleX + xSpeed;
  circleY = circleY + ySpeed;

  if (circleX > width -30 && circleX < width-20 && circleY > mouseY -rectSize/2 && circleY < mouseY+rectSize/2) {
    xSpeed = xSpeed*-1;
  }
  
   if (circleX < 25) {
    xSpeed *= -1.1;
    ySpeed *= 1.1;
    xSpeed += xSpeed;
  }

  if (circleY > height || circleY <0) {


   ySpeed = ySpeed*-1;// revertimos la velocidad y nos ahorramos la declaracion de abajo
  }
}
