float angulo = 0;
float escala = 1.0;
boolean aumentar = true;
float shearValue = 0;
PVector position;
void setup() {
  size(400, 400);
    position = new PVector(200, 200);
}

void draw() {
  float rojo = random(0, 255);
  float verde = random(0, 255);
  float azul = random(0, 255);
  background(255);
  stroke(0);
  fill(rojo, verde, azul);

  // Traslación
 translate(position.x, position.y);

  // Escalamiento
  scale(escala);

  // Rotación
  rotate(angulo);

  // Sesgado en el eje X
  shearX(shearValue);

  ellipse(0, 0, 100, 100);
}
void keyPressed() {
  if (key == 't' || key == 'T') {
    // Tecla 't' para traslación
    position.add(70, 70);
  } else if (key == 'e' || key == 'E') {
    // Tecla 'e' para escalamiento
    escala *= 3.1;
  } else if (key == 'r' || key == 'R') {
    // Tecla 'r' para rotación
    angulo += radians(10);
  } else if (key == 's' || key == 'S') {
    // Tecla 's' para sesgado en el eje X
    shearValue += radians(10);
  }
}
