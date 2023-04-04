import websockets.*;

WebsocketClient wsc;
int now;

void initSocket() {
  wsc = new WebsocketClient(this, url);
  now = millis();
}

void socket() {
  if (millis() > now + timeout) {
    try {
      wsc.sendMessage("emulator");
    }
    catch (Exception e) {
      wsc = new WebsocketClient(this, url);
    }
    now=millis();
  }
}

void webSocketEvent(String msg) {
  JSONObject json = parseJSONObject(msg);
  getMove(json.getString("cmolenck"));
}
