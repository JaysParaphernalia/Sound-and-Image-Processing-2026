import processing.video.*;

Capture cam;

void setup() {
  size(640, 480);

  String[] cameras = Capture.list();

  if (cameras.length == 0) {
    println("No camera found");
    exit();
  } //if no camera is present, prints message into console

  else {
    cam = new Capture(this, 640, 480, cameras[0], 30);
    cam.start(); // turning it on
  }
}
void draw() {

  if (cam.available()) {
    cam.read();
  }

  cam.loadPixels();
  loadPixels();

  for (int i = 0; i < cam.pixels.length; i++) { //dithering example
    float greyValue = red(cam.pixels[i]); //greyscale value
    float newPixelValue;
    if (greyValue > 140) newPixelValue = 255;
    else if (greyValue < 115) newPixelValue = 0;
    else newPixelValue = 127;
    float error = greyValue - newPixelValue;
    pixels[i] = color(newPixelValue);
    fsDither(i, error);
  }

  updatePixels();
}
void fsDither(int i, float error) {
  int[] offsets = {
    1, width-1, width, width+1
  };
  float[] weights = {
    7/16.0, 3/16.0, 5/16.0, 1/16.0
  };

  for (int j = 0; j < offsets.length; j++) {
    int n = i + offsets[j];
    if (n >= 0 && n < pixels.length) {
      float g = red(pixels[n]);
      float val = g + error * weights[j] * 0.6;
      val = constrain(val, 0, 255);
      pixels[n] = color(val);
    }
  }
}

void keyPressed() {
  // pressing S will save the current frame to disk
  if (key == 's') {
    saveFrame("frame-######.jpg");
    println("saved frame");
  }
  }
