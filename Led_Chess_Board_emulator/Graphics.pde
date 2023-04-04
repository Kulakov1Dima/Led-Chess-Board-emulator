
void windowSetup() {
  fill(0);
  stroke(255);
  rect(100, 100, 800, 800);
}

void setupPlay() {
  for (int x = 0; x<checkersMatrix.length; x++) {
    int c [] = grid(checkersMatrix[x]);
    fill(0);
    stroke(255);
    rect(c[0], c[1], 100, 100);
  }
}

void panel() {
  int c = 32;
  for (char i = 'A'; i <= 'H'; i++) {
    fill(255);
    textSize(55);
    text(i, c+=100, 82);
  }
  c = 70;
  for (int i = 8; i >= 1; i--) {
    fill(168, 20, 255);
    textSize(55);
    text(i, 50, c+=100);
  }
  pushMatrix();
  float angle2 = radians(90);
  translate(200, 180);
  rotate(angle2);
  fill(255);
  textSize(75);
  text("Смоленск", 120, -760);
  popMatrix();
}
