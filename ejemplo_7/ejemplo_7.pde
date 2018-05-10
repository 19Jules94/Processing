
float circleX;
float circleY;
void setup(){

  size(640,360);
  circleX = 0;
  circleY = 0;
}


void draw(){

  background(50);
  fill(255);
  
  ellipse(circleX,180,24,24);
  
  
  //Logica
  circleX++;
 

}
