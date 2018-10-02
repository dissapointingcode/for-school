//Trevor Roddy
//This program will generate randomly drawn pink traingle

void setup()
{
   //runs once
     background(249,249,249);
     size(1600,900);
} 

void raindrop(float randnum1)
{
 //draw a raindrop 
 float y = 0;
 for (int k = 1; k < 900; k++)
 {
   y = randnum1 + k;
   float startpoint = randnum1;
strokeWeight(3.0); 
stroke(255,153,255);
beginShape();
vertex(startpoint,y); //top left, top right, bottom right, bottom left, start point.
vertex(startpoint+3,y);
vertex(startpoint,y + 10);
vertex(startpoint-3,y + 10);
vertex(startpoint,y);
endShape();
 }
}

void draw()
{
  //runs forever
  // random number generator
  float r = random(1600); //replace number with max number generated
  //generate a plygon at an angle, purple colored, given a random float
  raindrop(r);
}
