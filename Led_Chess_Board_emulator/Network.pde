import websockets.*;

WebsocketClient wsc;
int now;

void initSocket(){
  wsc = new WebsocketClient(this, url);
  now = millis();
}

void socket(){
   if(millis() > now + timeout){
     wsc.sendMessage("");
     now=millis();
  }
}

void webSocketEvent(String msg){
  println(msg);
}
