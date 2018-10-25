class playerClass {
    float y = 6*scale;
    float x = 4 * scale;
    float velocity = scale / 50;
    float gravity = 0;
    
    void updateLocal(float currentground) {//update location
    
    float ground = currentground;
    
    //will do gravity and check if there is a need to stop ( ground )
    //checking for collision in checkcollision function
     for (int i = 0; i < squares.length; i++){
     if (squares[i].checkCollision(player) == true){
       gravity = 0;
       player.jump();
     }
     }
    
    // do gravity 
    y += gravity;
    if (gravity <= scale) // give it terminal velocity
    gravity += velocity;
    
    if (y >= ground) { //check if there is ground
      y = ground;
      player.jump();
    }
    
    
}
  
  void display() {
   fill(0);
   rect(x,y,scale,scale); //draw player
  }
  
  void jump() {
    if (keyPressed) {
     if ( key == 'w' || keyCode == UP) {
       gravity = -16;
     if (gravity == -16)
       gravity -= 4;
     }
    }
  }
    }
  
