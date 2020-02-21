PImage painting1;
float boxSize;

void setup(){
  painting1 = loadImage("painting1.jpg");
  size(447, 608);
  boxSize = width/10.0;
  image(painting1, 0, 0, width, height);
  noFill();
  noStroke();
  
  
  
  for(float y = 0; y < height; y += boxSize){
    for (float x = 0; x < width; x += boxSize){
      color c = imgAvgColor(get((int)x, (int)y, (int)boxSize, (int)boxSize));
      fill(c);
      rect(x,y,boxSize,boxSize);
    }
  }
  
}

color imgAvgColor(PImage p){
  
  int redAccumulated = 0;
  int greenAccumulated = 0;
  int blueAccumulated = 0;
  int nrOfPixels = 0;
  
  for (int y = 0; y < p.height; y++){
    for (int x = 0; x < p.width; x++){
      redAccumulated+=red(p.get(x,y));
      greenAccumulated+=green(p.get(x,y));
      blueAccumulated+=blue(p.get(x,y));
      nrOfPixels++;
    }
  } 
  
  return color(redAccumulated/nrOfPixels, greenAccumulated/nrOfPixels, blueAccumulated/nrOfPixels);
}



void draw(){

}
