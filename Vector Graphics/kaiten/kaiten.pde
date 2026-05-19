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
    fill(153, 50, 204);
    translate(xpos + (xstep * 0), height/2);
    rotate(radians(angleOne));
    rect(0, 0, 50, 50);
    angleOne = angleOne + 1;
 popMatrix();
 
 pushMatrix();
    translate(xpos + (xstep + 1), height/2);
    rotate(radians(angleTwo));
    rect(0, 0, 50, 50);
    angleTwo = angleTwo + 3;
 popMatrix();
 
 pushMatrix();
    translate(xpos + (xstep * 2), height/2);
    rotate(radians(angleThree));
    rect(0, 0, 50, 50);
    angleThree = angleThree + 5;
 popMatrix();
 
 pushMatrix();
    translate(xpos + (xstep * 3), height/2);
    rotate(radians(angleFour));
    rect(0, 0, 50, 50);
    angleFour = angleFour + 7;
 popMatrix();
 
  pushMatrix();
    translate(xpos + (xstep * 4), height/2);
    rotate(radians(angleFive));
    rect(0, 0, 50, 50);
    angleFive = angleFive + 9;
 popMatrix();

}
