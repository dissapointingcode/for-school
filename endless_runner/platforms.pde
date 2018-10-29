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
    y = other.y + int(random(-3 * scale,3 * scale));
    x = other.x + int(random(scale,maxjump));
    displayX = x;
  }
  void display(int currentsquare) {
    fill(200,125,255);
    displayX -= screenspeed;
    rect(displayX,y,scale,scale);
    if (displayX < -10) {
      if (currentsquare != 0)
       squares[currentsquare] = new platforms(squares[currentsquare - 1]);
      if (currentsquare == 0)
       squares[currentsquare] = new platforms();
    }
  }
  void checkCollision(playerClass player) {
        if(this.displayX <= player.x + scale && this.displayX >= player.x - scale){
      if((player.y + scale) >= this.y - 3 && (player.y + scale) <= this.y + 3){
        player.gravity = 0;
      }
    }
  
  }
}


  //if(this.displayX <= player.x + scale && this.displayX >= player.x - scale){
  //    if(player.y + scale <= this
  //  }
