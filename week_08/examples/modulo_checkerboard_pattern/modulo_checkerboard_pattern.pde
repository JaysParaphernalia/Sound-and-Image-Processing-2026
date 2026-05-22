color[] colours = {
  color(0, 0, 0), 
  color(255, 255, 255) 
};

int coloursCount = colours.length; 

void setup() {
  size(400, 400);
  background(220); 
  noStroke();
  
  int cols = 10;
  int rows = 10;
  
  float spacing = width / float(cols); // the cell size
  for (int x = 0; x < cols; x++) {
  for (int y = 0; y < rows; y++) { // generating the grid positions
    
   int i = (x + y) % coloursCount; // making alternate pattern using modulo
   fill(colours[i]);
   
   circle(
   x * spacing + spacing/2,
   y * spacing + spacing/2,
   spacing * 0.8
   );
   
  }
  }
}

    
    
