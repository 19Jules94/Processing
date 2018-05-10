
float endX = 0;
void setup() {

  size(400, 300);
}

void draw() {

  background(0);
  strokeWeight(2);
  stroke(255);



  /*
  Dibuja lineas verticales conforme movemos el mouse
   */

  /*
  float x = 0;
   
   while (x < mouseX) {
   
   line(x, 0, x, height);
   x = x + 20;
   
   */

  float x = 0;

  while (x < endX) {

    line(x, 0, x, height);
    x = x + 20;
  }

  endX = endX + 1;
}
