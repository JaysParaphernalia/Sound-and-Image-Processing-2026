PImage img;

void setup() {
  size(1000, 1250);
  img = loadImage("invincible.jpg");
  img.loadPixels();
  
  sortImage();
}

void draw() {
  image(img, 0, 0);
}

void sortImage() {

  for (int y = 0; y < img.height; y++) {
  
  color[] row = new color[img.width];

  for (int x = 0; x < img.width; x++) {
    row[x] = img.pixels[y * img.width + x]; //pixels into row
  }
    
   row = sort(row); // to start reorder, glitch
   
   for (int x = 0; x < img.width; x++) {
     img.pixels[y * img.width + x] = row[x];
     
   }
  }
  img.updatePixels();
}
