//Global Variables
int reset;
int faceX, faceY, faceDiameter;
int leftEyeX, leftEyeY, leftEyeDiameter;
int rightEyeX, rightEyeY, rightEyeDiameter;
int noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthThick;
color red = #FF0303;
color measlesColor = red;
color colorReset = white;
float measlesX, measlesY, measlesDiameter;
int buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, yellow, purple;
color green = #FFFFFF;
int leftPupilX, leftPupilY, leftPupilDiameter;
int rightPupilX, rightPupilY, rightPupilDiameter;


  
void setup1() {
  population();
  //fullScreen();
  println("Screen Width is", displayWidth, "Screen Height is", displayHeight);
  background(0);
  color(255);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  
  
}//End setup1

void draws() {
   
  
  int measlesX = int(random(width));
  int measlesY = int(random(height));
  measlesDiameter = random(height*1/70, height*1/40);
  fill(measlesColor);
  if( get(measlesX,measlesY) == color(255) ){
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
  }
  fill(colorReset);
  ellipse(leftEyeX, leftEyeY, leftEyeDiameter, leftEyeDiameter);
  ellipse(rightEyeX, rightEyeY, rightEyeDiameter, rightEyeDiameter);
  fill(1);
  ellipse(leftPupilX, leftPupilY, leftPupilDiameter, leftPupilDiameter);
  ellipse(rightPupilX, rightPupilY, rightPupilDiameter, rightPupilDiameter);
  fill(colorReset);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  strokeWeight(mouthThick);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset);
  
 if (mouseX>buttonX && mouseX<width && mouseY>height*0 && mouseY<buttonHeight) { //Button Hoverover;
    buttonColour = yellow; //Hoverover
  } else {
    buttonColour = purple;
  }// End IF
  String title = "X";
PFont titleFont;
titleFont = createFont ("Times New Roman Bold", 30);
  fill(buttonColour); 
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(0);
  textAlign(CENTER, CENTER);
  textFont(titleFont, 20);
text(title, width*23/32, height*0/16, width*1/2, height*1/16 );
fill(colorReset);
}//End draws

void pressedMouse() {
   if (mouseX>buttonX && mouseX<width && mouseY>height*0 && mouseY<buttonHeight)
   turnOnMeasles=false;
    //exit();
}//End pressedMouse


void population() {
  faceX = width/2;
  faceY = height/2;
  faceDiameter = height;
  leftEyeX = width*3/8;
  leftEyeY = height*1/4;
  leftEyeDiameter = height/7;
  rightEyeX = width*5/8;
  rightEyeY = leftEyeY;
  rightEyeDiameter = leftEyeDiameter;
  noseX1 = width/2;
  noseY1 = height*2/5;
  noseX2 = width*7/16;
  noseY2 = height*6/10;
  noseX3 = width*9/16;
  noseY3 = noseY2;
  mouthX1 = leftEyeX;
  mouthY1 = height*3/4;
  mouthX2 = rightEyeX;
  mouthY2 = mouthY1;
  mouthThick = 15;
  reset = 1;
  buttonX = width*15/16;
  buttonY = height*0/14;
  buttonWidth = width*15/16;
  buttonHeight = height*1/14; 
  purple = #F200FF;
  yellow = #FFE308;
  leftPupilX = width*3/8;
  leftPupilY = height*1/4;
  leftPupilDiameter = height/20;
 rightPupilX = width*5/8;
 rightPupilY =  height*1/4;
  rightPupilDiameter =  height/20;
  
}//End population
