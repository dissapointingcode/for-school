public class raindrop{
  
      float y = random(-500,0);
      float x = random(2100);
      float dropspeed = random(.5,3);
    void rain() {
          y = y+ dropspeed;
          x = x - (dropspeed / 3);
          if (y > 900) {
            y = y - 1000;
            x = random(2100);
          }
          
    }
    
    void drop(int clrr,int clrg,int clrb) {
      strokeWeight(3.0); 
      stroke(clrr,clrg,clrb);
      beginShape();
        vertex(x,y); //top left, top right, bottom right, bottom left, start point.
        vertex(x+3,y);
        vertex(x,y + 10);
        vertex(x-3,y + 10);
        vertex(x,y);
      endShape();
    }
}
