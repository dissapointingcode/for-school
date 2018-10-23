class platforms {
  float x;
  int y;
  int counter = 0;
  float displayX = 0;
  platforms() {
  x = width;
  y = int(random(height - (3 * scale + scale),height));
  displayX = x;
  }
  
  platforms(platforms other) {
    y = int(random(height - (3 * scale + scale),height));
    x = width + other.x + maxjump;
    displayX = x;
  }
  void display() {
    fill(200,125,255);
    displayX -= screenspeed;
    rect(displayX,y,scale,scale);
  }
}
