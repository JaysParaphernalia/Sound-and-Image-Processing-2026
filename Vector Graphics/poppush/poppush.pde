float angleOne = 0;
float angleTwo = 0;
float angleThree = 0;
float angleFour = 0;
float angleFive = 0;

float xpos = 80;
float xstep = 60;

void setup() {
  size(400, 400);
  rectMode(CENTER);
}

void draw() {
  background(0);
  pushMatrix();
    fill(50,120,170);
    translate(xpos + (xstep * 0), height/2);
    rotate(radians(angleOne));
    rect(0, 0, 50, 50); 
    angleOne = angleOne + 1;
  popMatrix();
  
  pushMatrix();
    fill(60,150,220);
    translate(xpos + (xstep * 1), height/2);
    rotate(radians(angleTwo));
    rect(0, 0, 50, 50); 
    angleTwo = angleTwo + 2;
    popMatrix();
    
    pushMatrix();
    fill(26,190,160);
    translate(xpos + (xstep * 2), height/2);
    rotate(radians(angleThree));
    rect(0, 0, 50, 50); 
    angleThree = angleThree + 4;
  popMatrix();
  
   pushMatrix();
    fill(230,75,70);
    translate(xpos + (xstep * 3), height/2);
    rotate(radians(angleFour));
    rect(0, 0, 50, 50); 
    angleFour = angleFour + 6;
  popMatrix();
  
     pushMatrix();
    fill(240,195,20);
    translate(xpos + (xstep * 4), height/2);
    rotate(radians(angleFive));
    rect(0, 0, 50, 50); 
    angleFive = angleFive + 8;
  popMatrix();
  
  
}
    
    
    
  
