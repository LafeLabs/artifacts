
int index = 0;

void setup(){

size(1000,1000);

}


void draw(){
frameRate(10);  
for(index = 0;index < 10;index++){
  fill(random(255),random(255),random(255));
  ellipse(random(width),random(height),random(50),random(150));
}

}
