float noiseScale = 0.02;
float circleSize = 25;

void setup() {
  size(1080, 1080);
  textSize(10);
} 


void draw() {
  background(0);

  //fill (noise(mouseX,mouseY)*255);
  //ellipse(width/2,height/2,400,400);

  for (int i = 0; i < int((width/circleSize)); i++) {
    for (int c = 0; c < int(width/circleSize); c++) {
      float randomVal = noise(i,c+(millis()*0.01));
      randomVal = randomVal * 255;
      fill(randomVal);
      float xPosition = i*circleSize;
      float yPosition = c * circleSize;
      ellipse(xPosition, yPosition, circleSize, circleSize);
    }
  } 

  //for (int x=0; x < width; x++) {
  //  float noiseVal = noise((mouseX+x)*noiseScale, mouseY*noiseScale);
  //  stroke(noiseVal*255);
  //  line(x, mouseY+noiseVal*80, x, height);
  //}
}
