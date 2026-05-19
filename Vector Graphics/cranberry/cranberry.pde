void setup() {
  size(400, 400);
  background(0);
  
  blendMode(BLEND);
  rectMode(CENTER);
  rect(200, 200, 100, 100); // rectangle drawn from center
  
  noStroke();
  
  blendMode(DIFFERENCE);
  fill(245, 210, 80);
  rect(width/2, height/2, 90, 90);
  
   pushMatrix();
    translate((width/2)-72, (height/2)-75);
    drawTriangle();
  popMatrix();
  
  ellipse((width/2)+25, (height/2)+25, 100, 100);
  
}
  void drawTriangle() {
    triangle(
    50, 60,
    100, 60,
    50, 0
   );
  }
   
  
