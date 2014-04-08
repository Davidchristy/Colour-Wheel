int blueX = width/2;
int blueY = height/2;
int pixelSize = 5;
void setup() {
  size(1024, 500);
  noStroke();
  fill(0);
}

void mousefiles
() {
  print("clicked");
}

void mouseReleased() {
  blueX = round(mouseX);
  blueY = round(mouseY);
} 


void draw() {
  // background((mouseX*255)/width,(mouseY*255)/height,
  //   round(distanceFrom(blueX, blueY, mouseX, mouseY)));

  //  blueX = mouseX;
  //  blueY = mouseY;

  for (int x = 0; x <= width; x += pixelSize) {
    for (int y = 0; y <= height; y += pixelSize) {
      fill(color(x*255)/width, (y*255)/height, 
      round(abs(50-distanceFrom(mouseX, mouseY, x, y))));
      rect(x, y, pixelSize, pixelSize);
      //    if(round(distanceFrom(blueX, blueY, x, y)) == 255){
      //      stroke(color(0));
      //       line(x, y, x, y);
      //    }
    }
  }
}

float distanceFrom(int middleX, int middleY, int currentX, int currentY) {
  int tempX = abs(middleX - currentX);
  int tempY = abs(middleY - currentY);

  float distance = pow(pow(tempX, 2)+pow(tempY, 2), 0.5);

  return distance;
}

