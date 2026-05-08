void setup() {
  size(400, 400);
  
}

void draw() {
  
 loadPixels();
 for(int x = 0; x < width; x++) {
   for(int y = 0; y < height; y++) {
     float normalizedY = map(y, 0, height, 0, 1);
     color c;
     
     if (normalizedY < 0.5){
       c = lerpColor(color(255,0,0), color(0,255,0), normalizedY * 2);
     } else {
       c = lerpColor(color(0, 255, 0), color(0, 0, 255), (normalizedY - 0.5) * 2);
     }
     
     pixels[x + y * width] = c; 
   }
 }
  updatePixels();
}

/// mapping the gradient to Y coordinate switches from horizontal to vertical
/// divided the gradient into two parts
/// used lerpcolor to blend colors
