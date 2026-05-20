float xpos = 5;
float xstep = 5; 
float factor, ypos;
float noiseOffset = 0; //makes animation dynamic


void setup() {
  size(600, 400); 
}

void draw() {
  background(0); //clearing every frame
  stroke(0, 255, 100);
  noFill();
  beginShape();
  
  for (int i = 0; i < width/xstep; i++) {

    factor = float(i)/10 + noiseOffset; // adding noiseoffset making the wave organic
    ypos = map(noise(factor), 0, 1, height/2 - 80, height/2 + 80);
    
    vertex(xpos + (xstep*i), ypos);
    
  }
      endShape();
      noiseOffset +=0.02; //time movement
  }
  
