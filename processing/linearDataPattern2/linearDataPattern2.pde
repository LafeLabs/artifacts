size(2000,100);
background(255,255,255);

int x = 10;
int y = 0;
int totalSize = 100;
int thickness = 1;
int bitValue = 1; //0,1, or -1 for break
//int[] bitArray = {-1,1,0,0,0,1,0,1,-1};
int[] bitArray = {0,1,0,0,1,1,0,0,0,1,-1,0,0,1,1,0,0,0,1,-1,0,0,1,1,0,0,1,0,-1,0,0,1,1,0,0,1,1,-1,0,0,1,1,0,1,0,1,-1,0,0,1,1,1,0,0,0,-1,0,0,1,1,0,0,0,1,-1,0,0,1,1,0,0,0,1,-1,0,0,1,1,0,0,1,0,-1,0,0,1,1,0,0,1,1,-1,0,0,1,1,0,1,0,1,-1,0,0,1,1,1,0,0,0,-1};
String str1 = "112358";

fill(0,0,0);
int index = 0;

rect(x,y,totalSize,totalSize);


for(index = 0;index < bitArray.length;index=index+1){
  bitValue = bitArray[index];
  fill(0,0,0);
  x = x + totalSize;
  if(totalSize > 15){
  totalSize = int(float(totalSize)*0.7);
  }
  rect(x,y,totalSize,thickness);
  rect(x,y+totalSize,totalSize,thickness);
  rect(x,y,thickness,totalSize*1.3);
  rect(x+totalSize,y,thickness,totalSize*1.3);
  switch(bitValue){
    case 1:
      rect(x + 0.375*totalSize + 0.5*thickness,y + 0.25*totalSize + 0.5*thickness,0.25*totalSize,0.5*totalSize);
      break;
    case 0:
      rect(x + 0.125*totalSize + 0.5*thickness,y + 0.125*totalSize + 0.5*thickness,0.75*totalSize,0.75*totalSize);
      fill(255,255,255);
      rect(x + 0.25*totalSize + 0.5*thickness,y + 0.25*totalSize + 0.5*thickness,0.5*totalSize,0.5*totalSize);
      fill(0,0,0);
      break;
    case -1:
      rect(x + 0.375*totalSize + 0.5*thickness,y + 0.75*totalSize + 0.5*thickness,0.25*totalSize,0.5*totalSize);
      rect(x + 0.375*totalSize + 0.5*thickness,y - 0.25*totalSize + 0.5*thickness,0.25*totalSize,0.5*totalSize);
      break;
  }
}

x = x + totalSize;
rect(x,y,totalSize,totalSize);


