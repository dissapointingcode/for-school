raindrop[] rd = new raindrop[200];

void setup () {
     size(1600,900);
     frameRate(300);
     for (int k = 0; k< rd.length; k++)
     rd[k] = new raindrop();
}

color bg = 255;
int cr = 255;
int cg = 255;
int cb = 255;
int k = 0;
void mouseClicked() {
  if (cr == 255 && cg ==255 &&  cb ==255) {
    cr = 255;
    cg = 100;
    cb = 100;
  }
    else if (cr == 255 && cg ==100 &&  cb ==100) {
    cr = 255;
    cg = 255;
    cb = 100;
  }
    else if (cr == 255 && cg ==255 &&  cb ==100) {
    cr = 100;
    cg = 255;
    cb = 100;
  }
    else if (cr == 100 && cg ==255 &&  cb ==100) {
    cr = 100;
    cg = 255;
    cb = 255;
  }
    else if (cr == 100 && cg ==255 &&  cb ==255) {
    cr = 100;
    cg = 100;
    cb = 255;
  }
    else if (cr == 100 && cg ==100 &&  cb ==255) {
    cr = 255;
    cg = 100;
    cb = 255;
  }
    else if (cr == 255 && cg ==100 &&  cb ==255) {
    cr = 255;
    cg = 255;
    cb = 255;
  }
}
void draw() {
 
  background(bg);
  int chance = int(random(200));
  
  if (chance == 1) {
     background(0);
  }
    for (int k = 0; k< rd.length; k++) {
    rd[k].rain();
    rd[k].drop(cr,cg,cb);
  }
}


/*
  if (cr == && cg == && cb ==)
*/
