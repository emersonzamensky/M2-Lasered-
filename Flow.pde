// Create variables for the components of the flower
// Components are amount of petals, amount of rows of petals inside, length of flower, and width of flower
class flower{
int petalCount;
int rowCount;
float len;
float wid;

// Assigning values that can be changed based on preference
flower(){
  petalCount = int(4)*4;
  len = (150);
  wid = (0.5);
  rowCount = int(7);
}

void display(){
  // Add stroke
  stroke(0);
  strokeWeight(1);
  // Create delta and bob variables
  float deltaA = (2*PI)/petalCount;
  float bob = len;
  // Save coordinates
  pushMatrix();
  // Draw, some values can be changed here as well
  for (int r = 0; r < rowCount; r++){
    for (float angle = 0; angle < 2*PI; angle += deltaA){
      rotate(deltaA);
      fill(150, 20, 200);
      ellipse(bob*1, 0, bob, bob*wid);
      }
      bob = bob*(1-3.3/rowCount);
    }
   popMatrix();
  }
}
