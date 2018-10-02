void setup() {
 size(1600,900);
}

 color bg = 255; // starts off white

void draw() {
  background(bg);
}
void mouseClicked() {
  if (bg == 255) //white to red
    bg = 16737380;
  else if (bg == 16737380)//red to yellow
    bg = 16777060;
  else if (bg == 16777060) //yellow to green
    bg = 6618980;
  else if (bg == 6618980) //green to light blue
    bg = 6619135;
  else if (bg == 6619135) //light blue to purplish blue
    bg = 6579455;
  else if (bg == 6579455) // lightblue to purple color
    bg = 16737535;
  else if (bg == 16737535) // reset
    bg = 255;
    
}
