void setup() {
  size(1000, 1000, P3D);
  noiseDetail(2);
  strokeWeight(2);
  rectMode(CENTER);
}

void draw() {
  float yAnchor = - height * 0.5;
  float signWidth = width / 5;
  
  background(#FFFFFF);
  translate(width/2, height * 0.95);
  float rotZ = noise(frameCount * 0.01 + 10.111);
  rotZ = map(rotZ, 0, 1, -1, 1) * PI / 4;
  rotateZ(rotZ);
  float rotX = noise(frameCount * 0.01 + 3.333);
  rotX = map(rotX, 0, 1, -1, 1) * PI / 4;
  rotateX(rotX);
  
  line(0, 0, 0, yAnchor);
  rect(0, yAnchor - signWidth / 2, signWidth / 2, signWidth);
}