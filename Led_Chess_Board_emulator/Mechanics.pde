String checkersMatrix[] = {"A7", "B8", "B6", "C7", "D8", "D6", "E7", "F8", "F6", "G7", "H8", "H6",
  "A5", "C5", "E5", "G5", "H4", "F4", "D4", "B4",
  "A1", "A3", "B2", "C1", "C3", "D2", "E1", "E3", "F2", "G1", "G3", "H2"};

String from = "";
String to = "";

int[] grid (String coordinate) {

  int[] c = {0, 0};

  if (coordinate.equals("A1")) {
    c[0] = 100;
    c[1] = 800;
  }
  if (coordinate.equals("A3")) {
    c[0] = 100;
    c[1] = 600;
  }
  if (coordinate.equals("A5")) {
    c[0] = 100;
    c[1] = 400;
  }
  if (coordinate.equals("A7")) {
    c[0] = 100;
    c[1] = 200;
  }

  if (coordinate.equals("B2")) {
    c[0] = 200;
    c[1] = 700;
  }
  if (coordinate.equals("B4")) {
    c[0] = 200;
    c[1] = 500;
  }
  if (coordinate.equals("B6")) {
    c[0] = 200;
    c[1] = 300;
  }
  if (coordinate.equals("B8")) {
    c[0] = 200;
    c[1] = 100;
  }

  if (coordinate.equals("C1")) {
    c[0] = 300;
    c[1] = 800;
  }
  if (coordinate.equals("C3")) {
    c[0] = 300;
    c[1] = 600;
  }
  if (coordinate.equals("C5")) {
    c[0] = 300;
    c[1] = 400;
  }
  if (coordinate.equals("C7")) {
    c[0] = 300;
    c[1] = 200;
  }

  if (coordinate.equals("D2")) {
    c[0] = 400;
    c[1] = 700;
  }
  if (coordinate.equals("D4")) {
    c[0] = 400;
    c[1] = 500;
  }
  if (coordinate.equals("D6")) {
    c[0] = 400;
    c[1] = 300;
  }
  if (coordinate.equals("D8")) {
    c[0] = 400;
    c[1] = 100;
  }

  if (coordinate.equals("E1")) {
    c[0] = 500;
    c[1] = 800;
  }
  if (coordinate.equals("E3")) {
    c[0] = 500;
    c[1] = 600;
  }
  if (coordinate.equals("E5")) {
    c[0] = 500;
    c[1] = 400;
  }
  if (coordinate.equals("E7")) {
    c[0] = 500;
    c[1] = 200;
  }

  if (coordinate.equals("F2")) {
    c[0] = 600;
    c[1] = 700;
  }
  if (coordinate.equals("F4")) {
    c[0] = 600;
    c[1] = 500;
  }
  if (coordinate.equals("F6")) {
    c[0] = 600;
    c[1] = 300;
  }
  if (coordinate.equals("F8")) {
    c[0] = 600;
    c[1] = 100;
  }

  if (coordinate.equals("G1")) {
    c[0] = 700;
    c[1] = 800;
  }
  if (coordinate.equals("G3")) {
    c[0] = 700;
    c[1] = 600;
  }
  if (coordinate.equals("G5")) {
    c[0] = 700;
    c[1] = 400;
  }
  if (coordinate.equals("G7")) {
    c[0] = 700;
    c[1] = 200;
  }

  if (coordinate.equals("H2")) {
    c[0] = 800;
    c[1] = 700;
  }
  if (coordinate.equals("H4")) {
    c[0] = 800;
    c[1] = 500;
  }
  if (coordinate.equals("H6")) {
    c[0] = 800;
    c[1] = 300;
  }
  if (coordinate.equals("H8")) {
    c[0] = 800;
    c[1] = 100;
  }

  return c;
}

void nextGame() {
  for (int i = 0; i<12; i++) {
    int c [] = grid(checkersMatrix[i]);
    fill(255);
    stroke(0);
    rect(c[0], c[1], 100, 100);
  }
  for (int i = 31; i>=20; i--) {
    int c [] = grid(checkersMatrix[i]);
    fill(198, 32, 32);
    stroke(0);
    rect(c[0], c[1], 100, 100);
  }
}

void getMove(String command) {

  boolean count = false;

  command = command.replaceAll(" ", "").toUpperCase();

  for (int i=0; i<command.length(); i++) {
    if (Character.isDigit(command.charAt(i))) {
      if (count) {
        to = command.charAt(i-1)+""+command.charAt(i);
      } else {
        from = command.charAt(i-1)+""+command.charAt(i);
        count = true;
      }
      if (to.length()>0) {
        println(from);
        println(to +"\n");
      }
    }
  }
}
