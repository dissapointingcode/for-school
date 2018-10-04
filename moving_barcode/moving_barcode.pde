//trevor roddy october 3rd
//generative art mimicing a barcode but moving

bars[] thebar = new bars[12];

  void setup() {
  size(400,600);
  background(0);
  for (int k = 0; k < thebar.length; k++){
     thebar[k] = new bars();
     thebar[k].the_y = (80 + (40 * k));
  }
}

  
  void draw() {
  for (int k = 0; k < thebar.length; k++){
     thebar[k].calculate();
     thebar[k].display();
  }
}
