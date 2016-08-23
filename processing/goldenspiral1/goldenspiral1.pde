size(700,700);

float x0 = 350.0;
float y0 = 350.0;
float y = 0.0;
float x = 0.0;

float r = 100.0;
float r0 = 300.0;
float yOld = 0.0;
float xOld = r0;

float theta =0.0;
float tau = 100.0;
float[] thetaArray = {};
float[] rArray = {};
int index = 0;
float circleRad = 10.0;
float circleRadStart = 10.0;
float[] circleRadArray = {};

ellipseMode(RADIUS);

for(theta = 0.0;theta < 250.0;theta = theta + .07){
  r = r0*exp(-theta/tau);
  circleRad = circleRadStart*exp(-theta/tau);
  circleRadArray = append(circleRadArray,circleRad);
  thetaArray = append(thetaArray,theta);
  rArray = append(rArray,r);
}

for(index = 0;index < thetaArray.length;index ++){
  x = rArray[index]*cos(thetaArray[index]);
  y = rArray[index]*sin(thetaArray[index]);
  fill(255*(index%2),50*(index%8),255*((index+1)%2));
  ellipse(x+x0,y+y0,circleRadArray[index],circleRadArray[index]); 
  line(xOld+x0,yOld+y0,x + x0,y + y0);
  xOld = x;
  yOld = y;
}
print(thetaArray.length/8);
//after the Golden spiral reaches a terminal scale, it should 
//fix scale and switch to Archimedian spiral r = a*theta


