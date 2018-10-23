platforms squares[] = new platforms[0];

float temp_X = 0;
int gridy = 0;
int scale = 64; // how big each grid should be
int gridCounter = width / scale;
float screenspeed = 1;
float maxjump = scale + 47;

playerClass player = new playerClass();

void setup() {
  size(1024,896);
}
float currentground = (896 - 2 * scale);
void draw() {
   background(255);
   grid(temp_X);
   player.updateLocal(currentground);
   player.display();
   temp_X -= 1;
   screenspeed += .1;
   maxjump = ((47 * temp_X) + scale);
}

  void grid(float temp_x) {
    //this function makes a grid according to the variable scale and the pre assigned width and height, if you change the screen resolution or the scale with graph will still cooperate
    for (float gridx = temp_x;gridx < width;) {
        for (float gridy = 0;gridy < height;) {
          noFill();
          rect(gridx,gridy,scale,scale);
          gridy += scale;
        }
        gridx += scale;
    }
  }
