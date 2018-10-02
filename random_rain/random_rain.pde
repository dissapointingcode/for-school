//trevor Roddy
//generate rain

raindrop[] rd = new raindrop[999];

void setup()
{
   //runs once
     size(1600,900);
     frameRate(300);
       for (int k = 0; k< rd.length; k++)
       rd[k] = new raindrop();
} 

void draw()
{
  //runs forever
  // random number generator
  background(249,249,249); 
  //generate a plygon at an angle, purple colored, given a random float
  for (int k = 0; k< rd.length; k++) {
    rd[k].rain();
    rd[k].drop();
  }
}
