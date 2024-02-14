// Emerson Zamensky
// Comp Fab SP 2024
// Followed tutorial for base code from https://www.youtube.com/watch?v=DwfMg4ISkvo !

flower f1;

void setup(){
  size(800, 1000);
  colorMode(HSB, 360, 100, 100);
  f1 = new flower();
  frameRate(1);
}

void draw(){
  background(200);
  pushMatrix();
  translate(width*0.5, height*0.5);
  f1.display();
  popMatrix();
  f1 = new flower();
}
