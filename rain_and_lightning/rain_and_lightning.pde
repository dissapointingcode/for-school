raindrop[] rd = new raindrop[200];

void setup () {
     size(1600,900);
     frameRate(300);
     for (int k = 0; k< rd.length; k++)
     rd[k] = new raindrop();
}

color bg = 255;
int k = 0;
void draw() {
 
  background(bg);
  int chance = int(random(200));
  
  if (chance == 1) {
     background(0);
  }
    for (int k = 0; k< rd.length; k++) {
    rd[k].rain();
    rd[k].drop();
  }
}
