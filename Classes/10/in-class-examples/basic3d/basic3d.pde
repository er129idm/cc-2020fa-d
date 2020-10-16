void setup() {
  size(1080, 1080, P3D);
  //fullScreen(P3D);
  noStroke();
}

void draw() {
  background(0);
  
  //beginCamera();
  
  lights();
  
  float lightX, lightY, lightZ;
  lightX = mouseX;
  lightY = mouseY;
  lightZ = 300;
  
  push();
  translate(lightX, lightY, lightZ);
  pointLight(255, 0, 200, 0, 0, 0);
  //fill(255);
  //sphere(10);
  pop();
  
  pointLight(0, 255, 0, width, height, 0);
  
  sphereDetail(5);
  
  fill(127);
  //stroke(#ffffff);
  pushMatrix();
  translate(width/2, height/2);
  rotateX(frameCount*0.01);
  rotateY(frameCount*0.001);
  //box(width/4);
  sphere(100);
  popMatrix();
  
  //endCamera();
}
