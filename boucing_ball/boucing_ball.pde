

float circleX;
float circleY;
float xSpeed =2;
float ySpeed =2;
void setup() {

  size(640, 360);
  circleX = 0;
  circleY = 0;
}


void draw() {

  background(50);

  stroke(255);
  ellipse(circleX, circleY, 30, 30);

  //Logica
  float R = random(0, 255);
  float G = random(0, 255);
  float B = random(0, 255);


  circleX = circleX + xSpeed;
  circleY = circleY + ySpeed;

  if (circleX > width || circleX <0) {

    fill(R, G, B);
    xSpeed = xSpeed*-1;// revertimos la velocidad y nos ahorramos la declaracion de abajo
  }

  if (circleY > height || circleY <0) {

    fill(R, G, B);
    ySpeed = ySpeed*-1;// revertimos la velocidad y nos ahorramos la declaracion de abajo
  }

  //if (circleX < 0) {
  //  xSpeed = 10;
  //}
}
