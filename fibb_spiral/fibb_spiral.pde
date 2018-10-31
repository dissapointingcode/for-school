//Trevor Roddy
//make a spiral using a for loop using fibbonacci sequence

int fibb[] = new int[6]; //array containing int values

void setup() {
  background(0);
  size(400,600);
  frameRate(30);
  //fills array with fibb sequence
      for(int i = 0; i < fibb.length; i++) {
      if (i == 0 || i == 1)
      fibb[i] = 40;
      else
      fibb[i] = fibb[i-1] + fibb[i-2];
    }
}

void draw() {
  //variable that determines the starting angle of each line
  float startAngle = 0;
  float lineLength = 1; //determines length
  float lastX = 0;
  float lastY = 0;
  float newX = 0;
  float newY = 0;

  
  for(int k = 0; k < 6; k++) {
    lineLength = fibb[k];
    if (k == 0) {
      stroke(255);
      line(width/2,height/2,(width / 2) + lineLength,height / 2);
      lastX = (width / 2) + lineLength;
      lastY = (height / 2); 
      startAngle++;
    }
    
    
    else {
      if (startAngle % 4 == 0) {
        newY = lastY;
        newX = lastX + lineLength;
      }
      
      else if (startAngle % 3 == 0 && startAngle % 4 != 0) {
        newY = lastY +lineLength;
        newX = lastX;
      }
      
      else if (startAngle % 2 == 0 && startAngle % 3 != 0 && startAngle % 4 != 0) {
        newY = lastY;
        newX = lastX - lineLength;
      }
      
      else if (startAngle % 2 != 0 && startAngle % 3 != 0 && startAngle % 4 != 0) {
        newY = lastY - lineLength;
        newX = lastX;
      }
      stroke(255);
      line(lastX,lastY,newX,newY);
      lastX = newX;
      lastY = newY;
      startAngle++;
    }
  }
}
