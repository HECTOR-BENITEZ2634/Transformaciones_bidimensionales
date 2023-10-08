float angulo = 0;
float intensidad = 0;
boolean aumentar = true;
void setup(){
  size(400, 400);
}

void draw(){
  float rojo = random(0, 255);
  float verde = random(0, 255);
  float azul = random(0, 255);
  background(intensidad, 255, 255);
  stroke(intensidad, 20,80);
  fill(rojo, verde, azul);
  //Traslacion
  translate(200, 200);
  //Escalamiento
   scale(1.7);
   //rotacion
  rotate(radians(50));
  //sesgado
  //shearX(PI/3);
  ellipse(0, 0, 100, 100);
  // Creacion de un rectangulo para que se pueda visualizar la rotación, ya que en un circulo no es posible visualizarse
  //rect(0, 0, 100, 50);
  
  if (intensidad == 255){
    aumentar = false;
  }else if (intensidad == 0 ){
    aumentar = true;
  }
  
  if (aumentar ){
      intensidad += 1;
  }else {
    intensidad -= 1;
  }
}

void keyPressed()   {
  
  if (key == '1'){
      angulo += 0.01;
  }
}
