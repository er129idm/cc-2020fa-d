float xPos = 0;


void setup() {
  
  size(1080,1080);
  frameRate(30);
  textSize(24);
}

void draw() {

  background(0);
  fill(#FF0072);
  
  xPos = (sin(frameCount*0.001) * (1080/2)) + (1080/2);
  
  ellipse(xPos, height/2, 100, 100);
  text(xPos, xPos, height/2 - 100);
  
  
  
}
