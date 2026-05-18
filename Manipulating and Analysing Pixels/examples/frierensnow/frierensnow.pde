PImage sample;

void setup() {
  size(206, 244);
  sample = loadImage("frieren.jpg");
  sample.loadPixels();
}

void draw() {
  image(sample, 0, 0);

  int baseY = 850;
  
// three histograms
  int[] histogramR = new int[256];
  int[] histogramG = new int[256];
  int[] histogramB = new int[256];
  
  // and draw it to screen
  for (int i = 0; i < sample.pixels.length; i++) {
       
    // shade is an int from 0-255
    //extracting all colour channels
    int r = int(red(sample.pixels[i]));
    int g = int(green(sample.pixels[i]));
    int b = int(blue(sample.pixels[i]));
    
     
    // add to histogram
    histogramR[r]++;
    histogramG[g]++;
    histogramB[b]++;
  }  

  // draw histogram
 for (int i = 0; i < 256; i++) {
  stroke(255, 0, 0);
   line(i, baseY, i, baseY - histogramR[i]/10);
   
  stroke(0, 255, 0);
  line(i + 173, baseY, i + 173, baseY - histogramG[i]/10);

  stroke(0, 0, 255);
  line(i + 346, baseY, i + 346, baseY - histogramB[i]/10);
}
}
