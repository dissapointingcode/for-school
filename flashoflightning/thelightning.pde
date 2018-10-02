

class thelightning {

  int k = 0;
boolean on=true;

  void strike() {
  
      if(millis() % 100== 0) {
      if(on) {
    background(0);
  }
   
      else
    background(255);
      on = !on;
    }
  }

}
