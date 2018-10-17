class playerClass {
    float y = 6*scale;
    float x = 4 * scale;
    float velocity = scale / 50;
    float gravity = 4;
    float ground = (height - scale);
    
    void updateLocal() {//update location
    
    float ground = (height - scale);
    
    
    //will do gravity and check if there is a need to stop ( ground )
    

    // do gravity
    y += gravity;
    if (gravity <= scale) // give it terminal velocity
    gravity += velocity;
    
    if (y >= ground == true) { //check if there is ground
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
     if ( key == 'w') {
       gravity = -16;
     if (gravity == -16)
       gravity -= 4;
     }
    }
  }

  void leftright() {
    if (keyPressed) {
     if (key == 'd') {
       temp_X -= 1;
     }
    }
  }
    
  
}
