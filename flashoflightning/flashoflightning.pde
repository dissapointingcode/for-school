// flash the background like lightning

thelightning lightning = new thelightning();

void setup () {
     size(1600,900);
     frameRate(300);
}

color bg = 255;
int k = 0;
void draw() {
 
  background(bg);
  int chance = int(random(200));
  
  if (chance == 1) {
     background(0);
  }
}
