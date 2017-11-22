int datasetLength = 10000;

void setup() {
  size(1000, 1000);

  fill(#212121);
  stroke(#212121);
  strokeWeight(2);
  textAlign(CENTER, CENTER);

  noiseDetail(7);

  createTable(datasetLength);
}

void draw() {
  float y = simulate(frameCount);
  float r = map(y, 0, 1, -1, 1) * PI / 3;
  translate(width / 2, height * 0.75);
  rotate(r);

  background(#fafafa);
  line(0, 0, 0, -height / 2);
  text(frameCount, 0, 30);
}

float simulate(int frame) { 
  float x = frame / 200.0;
  float y = noise(x);
  return y;
}

void createTable(int tableLength) {
  Table simData = new Table();
  simData.addColumn("Step");
  simData.addColumn("Value");
 
  for (int i = 0; i < tableLength; i++) {
    TableRow newRow = simData.addRow();
    newRow.setInt("Step", i);
    float y = simulate(i);
    newRow.setFloat("Value", y);
  }
  
  saveTable(simData, "data/simData2.csv");
}