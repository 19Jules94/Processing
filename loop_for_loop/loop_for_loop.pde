
size(400, 300);
background(0);
strokeWeight(2);
stroke(255);







for (int x = 0; x < width; x = x +20) {
  //rect(x, 0, 20, 20);

  for (int y = 0; y < width; y = y +20) {
    int R = (int) random(0, 255);
    int G = (int) random(0, 255);
    int B = (int) random(0, 255);
    fill(R, G, B);
    rect(x, y, 20, 20);
  }
}
