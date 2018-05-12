import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class pong extends PApplet {


float x;
int puntuacion;
float rectSize =360;

float circleX, circleY;

float xSpeed =3, ySpeed =3;
public void setup() {


  
  x = width/2;
  circleX = 40;
  circleY = 40;
}


public void draw() {

  tablero();
  jugadores();
  pelota();
}



public void tablero() {
  background(0);
  stroke(255);
  strokeWeight(4);
  line(x, 0, x, height);

  textSize(32);
  text(puntuacion, 290, 50); 
  fill(255, 255, 255);
}

public void jugadores() {

  fill(255, 255, 255);

  rect(1, 0, 10, height);
  rect(width-20, mouseY, 10, 40);
}


/*
  Funcion de la pelota
 
 */
public void pelota() {

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
public void reset() {
  circleX = width/2;
  circleY = height/2;
  circleX = circleX + xSpeed;
  circleY = circleY + ySpeed;
}

public void mouseClicked(){
reset();
puntuacion =0;
}
  public void settings() {  size(640, 360); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "pong" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
