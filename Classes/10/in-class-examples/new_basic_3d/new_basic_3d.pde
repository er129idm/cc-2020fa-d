void setup() {

   size(1080,1080, P3D);
   frameRate(30);

}

void draw() {
  background(0);
  
  
  for (int i = 0; i < 100; i++) {
  
    pushMatrix();
    float xPosition = random(width);
    float yPosition = random(height);
    float zPosition = noise(xPosition, yPosition);
    float newFill = zPosition * 255;
    fill(newFill);
    translate(0,0,zPosition * 1000);
    ellipse(random(width), random(height), 100, 100);
    popMatrix();
  }

  noLoop();


}
