import processing.sound.*;

SoundFile Kick;
SoundFile Snare;
SoundFile HiHat;
SoundFile Clap;

float bpm = 120; //standard hiphop tempo

float myFrameRate = bpm /60; 

void setup() {
  size(640, 360);
  background(255);
  
  Kick = new SoundFile(this, "C:/New SIP 2026/My SIP 2026/SIP 2026/week_08/examples/samples/808kick.wav");
  Snare = new SoundFile(this, "C:/New SIP 2026/My SIP 2026/SIP 2026/week_08/examples/samples/snare.wav");
  HiHat = new SoundFile(this, "C:/New SIP 2026/My SIP 2026/SIP 2026/week_08/examples/samples/closed HiHat.wav");
  Clap = new SoundFile(this, "C:/New SIP 2026/My SIP 2026/SIP 2026/week_08/examples/samples/clap.wav");
  
  frameRate(myFrameRate);
}
  
  void draw() {
    background(random(255), random(255), random(255)); //visuals tied to the timing
    
    int beat = frameCount % 16; //16 step loop
    
     if (beat == 0 || beat == 8) { // kick on the downbeats
  Kick.play();
 }
 
   if (beat == 4 || beat == 12) { //snare on the backbeat
  Snare.play();
 }

   if (beat % 2 == 0) { //steady hi-hats for rhythm
  HiHat.play();
 }

  if (beat == 14) { // clap for variation
    Clap.play();
  }
  }
  
  
  
    
