import processing.sound.*;

int startTime;

SinOsc sine;
SawOsc saw;
TriOsc tri; // 3 oscillators

float freqMod;  //variable to control pitch movement

void setup() {
  size(640, 360);
  
  startTime = millis();
  
  sine = new SinOsc(this);
  saw = new SawOsc(this);
  tri = new TriOsc(this);
  
  sine.play();
  saw.play();
  tri.play();
  
  sine.amp(0);
  saw.amp(0.);
  tri.amp(0);
  
 
  
}

void draw() {
  background(0);
  
  float elapsed = millis() - startTime;
  
  freqMod = sin(frameCount * 0.02) * 0.5 + 1.0;
  sine.freq(210 * freqMod);
  saw.freq(357 * freqMod);
  tri.freq(493 * freqMod);
  
  sine.amp(sin(elapsed * 0.001) * 0.1 + 0.2);
  
}
