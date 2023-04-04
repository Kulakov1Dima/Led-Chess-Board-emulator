int timeout = 1500;
String url = "ws://85.237.35.92/relikt";
//cmolenck

void setup() {
  background(32, 32, 32);
  size(1050, 950);
  initSocket();
  windowSetup();
  setupPlay();
  panel();
  nextGame();
}

void draw() {
  socket();
}
