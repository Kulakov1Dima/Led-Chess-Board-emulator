int timeout = 2000;
String url = "ws://85.237.35.92/relikt";

void setup() {
  background(32, 32, 32);
  size(1050, 900);
  initSocket();
  windowSetup();
}

void draw() {
  socket();
}
