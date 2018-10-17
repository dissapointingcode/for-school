
int temp_X = 0;
int gridy = 0;
int scale = 64; // how big each grid should be
int gridCounter = width / scale;

playerClass player = new playerClass();
Map screen = new Map();

void setup() {
  size(1024,896);
  screen.initializeMap(0,0);
}

void draw() {
   background(255);
   screen.displayMap();
   grid(temp_X);
   player.updateLocal();
   player.display();
   player.leftright();
}

  void grid(int temp_x) {
    //this function makes a grid according to the variable scale and the pre assigned width and height, if you change the screen resolution or the scale with graph will still cooperate
    for (int gridx = temp_x;gridx < width;) {
        for (int gridy = 0;gridy < height;) {
          noFill();
          rect(gridx,gridy,scale,scale);
          gridy += scale;
        }
        gridx += scale;
    }
  }
