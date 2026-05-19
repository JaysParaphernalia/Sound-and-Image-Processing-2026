void setup() {
  size(500, 500);
  background(0);
  
  rectMode(CENTER);
  noStroke();
  
  blendMode(DIFFERENCE);
  
  for (int i = 0; i < 9; i++) { // loop generating a 3x3 grid of 9 shapes 
    float x = (i % 3) * 150 + 100;
    float y = (i / 3) * 150 + 100;
    
    
  if (i % 3 == 0) { //if remainder is 0, draw a square
    fill(245, 210, 80);
    rect(x, y, 90, 90);
    
  }
  else if (i % 3 == 1) { // if remainder is 1, draw an ellipse 
    fill(250, 95, 95);
    ellipse(x, y, 60, 60);

  }
  
  else { // otherwise draw a triangle
    fill(0, 180, 95);
    
    // move the drawing position to the right
    pushMatrix();
      translate(x, y);
      drawTriangle();
  popMatrix();
  }
 }
}
  void drawTriangle() {
  triangle(
  0, 30,
  -30, -30,
  30, -30
  );
}
