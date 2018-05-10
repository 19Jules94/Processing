
int x =100;

boolean going = false;
void setup() {

  size(640, 360);
}

void draw() {

  background(0);

  fill(255);

  ellipse(x, 150, 24, 24);

  if (going) {
    x = x+2;
  }
}

void mousePressed() {
  //if (going == true) {
  //  going = false;
  //} else {
  //  going = true;
  //}

  going = !going; // si going es verdadero ,se convierte ebn falso y viceversa
}
