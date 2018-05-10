void setup() {

  size(640, 360);
}

void draw() {

  background(0);

  if (mouseX >200 ) {
    //background(255,0,25);
    fill(255, 100, 0);
    rect(100,60,50,50);
    
  } else if (mouseX >100) {
    //background(100,50,25);
    fill(255, 100, 0);
    ellipse(200,200,100,60);
  }

  stroke(255);
  line(100, 0, 100, height);
  line(200, 0, 200, height);
}
