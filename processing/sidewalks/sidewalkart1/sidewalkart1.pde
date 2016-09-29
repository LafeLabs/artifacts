

float cursorRed = 0;
float cursorGreen = 0;
float cursorBlue = 0;
int n = 0;//number of pixels

float side = 28;

float x,y;

void setup(){

//  size(263,177);
  size(500,500);
  rectMode(CENTER);
  noFill();
  stroke(0);
  strokeWeight(1);
}

void draw(){
  background(255);  
  PImage myImage = loadImage("sidewalkmatt.jpg");
  image(myImage, 0, 0,width,height);
  x = mouseX;
  y = mouseY;
/*  beginShape();
  vertex(mouseX, mouseY);
  vertex(20+mouseX, mouseY);
  vertex(20+mouseX, 20+mouseY);
  vertex(40+mouseX, 20+mouseY);
  vertex(40+mouseX, 40+mouseY);
  vertex(mouseX, 40+mouseY);
  endShape(CLOSE);*/

  ellipseMode(CENTER);
  ellipse(mouseX,mouseY,side,side);
  
}

void getDigit(float xLocal,float yLocal){
    cursorRed = 0;
    cursorGreen = 0;
    cursorBlue = 0;

    PImage cursor = get(int(xLocal),int(yLocal),int(side/2),int(side/2));
    n = cursor.width*cursor.height;
    for(int cursorIndex = 0;cursorIndex < n;cursorIndex ++){
       cursorRed += red(cursor.pixels[cursorIndex]);
       cursorGreen += green(cursor.pixels[cursorIndex]);
       cursorBlue += blue(cursor.pixels[cursorIndex]);
     }
    cursorRed /= n;
    cursorGreen /= n;
    cursorBlue /= n;
}


void keyPressed(){
 if(key == 'u'){
    side *=1.05; 
 }
 if(key == 'd'){
    side /= 1.05; 
 }
}