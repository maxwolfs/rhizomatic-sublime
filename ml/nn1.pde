NeuralNetwork nn;

void setup() {
  //size(1920, 1080, P3D);
  fullScreen(P3D);
  initNN();
  colorMode(HSB);
}

void draw() {
  background(#212121);
  nn.update();

  //if (frameCount % 180 == 0)
  //  initNN();

  //if (frameCount == 1800)
  //  exit();

  //saveFrame("export/nn_" + frameCount + ".png");
}

void initNN() {
  int shape[] = new int[ceil(random(2, 10))];
  println(shape.length);
  shape[shape.length-1] = ceil(random(0, 3));
  for (int i = 0; i < shape.length - 1; i++) {
    shape[i] = ceil(random(2, 8));
  }

  float depth = random(width * 0.25, width * 0.75);
  float radius = random(height * 0.1, height * 0.5);

  nn = new NeuralNetwork(shape, depth, radius);
  //nn = new NeuralNetwork(new int[] {5, 7, 7, 3, 1}, 1000, 200);
}

void keyReleased() {
  initNN();
}

public class Neuron {
  private Neuron[] out;
  private float[] weights;
  public PVector position;
  private float activation, lastActivationTime, delay, visualPropagation;
  private boolean readyToPropagate;

  public Neuron() {
    delay = 80;
    lastActivationTime = 0;
    visualPropagation = 0;
    readyToPropagate = false;
  }

  public void update() {
    show();
    propagate();
  }

  private void propagate() {
    if (lastActivationTime + delay < millis() && readyToPropagate) {
      for (int i = 0; i < out.length; i++) {
        out[i].activate(constrain(activation * weights[i], 0, 1));
      }
      visualPropagation = 2;
      activation = 0;
      readyToPropagate = false;
    }
  }

  private void show() {
    noStroke();
    fill(#ffffff, 128);

    pushMatrix();
    translate(position.x, position.y, position.z);
    sphere(width * 0.001);
    popMatrix();

    noFill();

    for (int i = 0; i < out.length; i++) {
      float transparency = map(constrain(visualPropagation, 0, 1) * weights[i], 0, 1, 20, 255); 
      float saturation = map(sq(constrain(visualPropagation, 0, 1)) * weights[i], 0, 1, 0, 255);
      stroke(0, saturation, 240, transparency);
      //line(position.x, position.y, position.z, out[i].position.x, out[i].position.y, out[i].position.z);
      bezier(
        position.x, position.y, position.z, 
        lerp(position.x, out[i].position.x, map(noise(frameCount / 100.0 + position.x), 0, 1, 0.2, 0.5)), position.y, position.z, 
        lerp(position.x, out[i].position.x, map(noise(frameCount / 100.0 + out[i].position.x), 0, 1, 0.5, 0.8)), out[i].position.y, out[i].position.z, 
        out[i].position.x, out[i].position.y, out[i].position.z
        );
    }

    visualPropagation *= 0.9;
  }

  public void setOut(Neuron[] output) {
    out = output;
    weights = new float[out.length];
    for (int i = 0; i < weights.length; i++) {
      weights[i] = random(-1, 1);
    }
  }

  public void activate(float activate) {
    activation += activate;
    lastActivationTime = millis();
    readyToPropagate = true;
  }
}

public class NeuralNetwork {
  ArrayList<Neuron[]> layers;
  float depth;

  public NeuralNetwork(int[] shape, float depth, float radius) {
    layers = new ArrayList();
    this.depth = depth;

    for (int i = 0; i < shape.length; i++) {
      Neuron[] layer = new Neuron[shape[i]];
      for (int j = 0; j < shape[i]; j++) {
        layer[j] = new Neuron();

        float x = depth / (shape.length - 1) * i;
        float y = cos(TWO_PI / shape[i] * j) * map(shape[i], 1, 10, 0, radius);
        float z = sin(TWO_PI / shape[i] * j) * map(shape[i], 1, 10, 0, radius);
        PVector offset = PVector.random3D().mult(random(depth / (shape.length - 1)));
        layer[j].position = new PVector(x, y, z);
        layer[j].position.add(offset);
      }

      layers.add(layer);

      if (i >= 1) {
        Neuron[] previousLayer = layers.get(i-1);
        for (Neuron neuron : previousLayer) {
          neuron.setOut(layer);
        }
      }

      if (i >= shape.length-1) {
        for (Neuron neuron : layer) {
          neuron.setOut(new Neuron[0]);
        }
      }
    }
  }

  public void update() {
    pushMatrix();
    translate(width / 2 - depth / 2, height / 2);
    rotateX(frameCount / 500.0);

    for (Neuron[] layer : layers) {
      for (Neuron neuron : layer) {
        neuron.update();
      }
    }
    popMatrix();

    if (random(1) > 0.98) {
      Neuron[] inputLayer = layers.get(0);
      int randomNeuron = int(random(inputLayer.length));
      inputLayer[randomNeuron].activate(random(1));
    }
  }
}