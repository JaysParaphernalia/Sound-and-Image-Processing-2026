void setup() {
  size(400, 400);
  rectMode(CENTER);
  noStroke();
}

void draw() {
   background(0);

  int cols = 8; 
  int rows = 8; 
  float spacing = width / float(cols); 

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      
      float x = i * spacing + spacing / 2;
      float y = j * spacing + spacing / 2;
      
      pushMatrix();
      translate(x, y);
      
      float angle = (i + j) * 15 + frameCount * 2; // rotation based on position and time
      rotate(radians(angle));

      if ((i + j) % 2 == 0) {
        fill(20, 150, 90); 
      } else {
        fill(100, 189, 230); 
      }

      rect(0, 0, spacing * 0.6, spacing * 0.6);
      
      popMatrix();
    }
  }
}
