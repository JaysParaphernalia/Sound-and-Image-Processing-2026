Chaser enemy; 

//player variables
PVector playerPos; 
PVector velocity; 

// forces acting on the player
PVector gravity; 
PVector wind; 

float playerSize = 40;
boolean gameOver = false; // tracks game state

void setup() {
  size(800, 600); // set window size
  
  playerPos = new PVector(width/2, height/2); // spawns player in the middle
  velocity = new PVector(0, 0); //player starts still
  
  gravity = new PVector(0, 0.4); // moves downward every frame
  wind = new PVector(0.01, 0); // wind acting on the player pushing them to the right
  
  enemy = new Chaser(random(width), random(height)); // randomised enemy spawn
  
}

void draw() {
  background(30); // black background
  
  if (!gameOver) {
  
  // applying forces
  velocity.add(gravity);
  velocity.add(wind); 
  playerPos.add(velocity); // poisiton changes using velocity
  
  if (playerPos.y > height - playerSize/2) { //stops falling through floor
    playerPos.y = height - playerSize/2;
    velocity.y = 0;
  }
  // stops clipping through walls
  if (playerPos.x < 0) { 
    playerPos.x = 0;
  }
  
  if (playerPos.x > width) {
    playerPos.x = width;
  }
  
  fill(0, 210, 255);
  circle(playerPos.x, playerPos.y, playerSize); //draws blue circle as the player
  
  // the enemy
  enemy.update();
  enemy.display();
  
  float d = dist(playerPos.x, playerPos.y, enemy.position.x, enemy.position.y); // collision check between the player and enemy
  
  if (d < 30) {
    gameOver = true;
  }
  fill(255);
  textSize(20);
  text("Time: " + frameCount/60, 20, 30); //survival timer
  }
  
  else {
    fill(255);
    textSize(40);
    textAlign(CENTER);
    text("Game Over", width/2, height/2);
    
    textSize(20);
    text("Press R to restart", width/2, height/2 + 40);
  
  }
}


void keyPressed() {
  if (keyCode == LEFT) { // left arrow key movement
    playerPos.x -= 20;
  }
  if (keyCode == RIGHT) { //right arrow key movement
    playerPos.x += 20;
  }
  if (key == ' ') { //spacebar jump
    velocity.y = -10;
  }
  if (key == 'r') { // R key to restart
    setup();
    gameOver = false;
  }
}

class Chaser {
  
  // variables handling enemy location, speed and velocity
  PVector position;
  PVector velocity;
  PVector acceleration;
  
  float heading;
  
  Chaser(float x, float y) {
    
    position = new PVector (x, y); //starting position of the enemy
    velocity = new PVector(0, 0);
    acceleration = new PVector(); // starts with no velocity
  }
  
  void update() {
     PVector direction = PVector.sub(playerPos, position); // the direction to the player
     direction.normalize(); // makes direction length
     direction.mult(0.2); // speed
     acceleration = direction;
     velocity.add(acceleration);
     velocity.limit(5);
     heading = velocity.heading() + PI/2;
     position.add(velocity);
  }
  
  void display () { //drawing the enemy triangle
    fill(255, 50, 50); 
    pushMatrix();
    translate(position.x, position.y); 
    rotate(heading);
     
   beginShape(); 
   vertex(0, -20);
   vertex(15, 10);
   vertex(-15, 10);
   endShape(CLOSE);
   
   popMatrix();
  }
}
  
