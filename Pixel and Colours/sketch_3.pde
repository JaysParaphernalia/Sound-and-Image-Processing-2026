void setup() {
  size(400, 400);
}

void draw() {
  loadPixels();
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      float normY = float(y) / height; // normalising y so the gradient changes direction
      int r = 0;
      int g = 0;
      int b = 0;

      if (normY < 1.0/3.0) { 
        float t = map(normY, 0, 1.0/3.0, 0, 1); //blending the gradient by remapping
        r = int(80 * (1 - t) + 60 *  t);
        g = int(180 * (1 - t) + 220 * t); // adjusts the colour
        b = int(255 * (1 - t) + 200 * t);

      } else if (normY < 2.0/3.0) { // second gradient
        float t = map(normY, 1.0/3.0, 2.0/3.0, 0, 1);
        r = int(60 * (1 - t) + 230 * t);
        g = int(220 * (1 - t) + 200 * t);
        b = int(200 * (1 - t) + 255 * t);

      } else {
        float t = map(normY, 2.0/3.0, 1.0, 0, 1); // third gradient 
        r = int(230 * (1 - t) + 120 * t);
        g = int(200 * (1 - t) + 200 * t);
        b = int(255 * (1 - t) + 180 * t);
      }

      color col = color(r, g, b); // rgb
      pixels[x + y * width] = col;
    }
  }
  updatePixels();
}
