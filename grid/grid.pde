//draw a grid

void setup() {
  size(1600,960);
  int scale = 64;
  for (int gridx = 0;gridx < width;) {
        for (int gridy = 0;gridy < height;) {
          noFill();
          rect(gridx,gridy,scale,scale);
          gridy += scale;
        }
        gridx += scale;
  }
}

void draw() {
  
}
