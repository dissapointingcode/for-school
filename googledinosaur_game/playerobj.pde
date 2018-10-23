class playerClass {
    float y = 6*scale;
    float x = 4 * scale;
    float velocity = scale / 50;
    float gravity = 4;
    
    void updateLocal(float currentground) {//update location
    
    float ground = currentground;
    
    
    //will do gravity and check if there is a need to stop ( ground )
    

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
