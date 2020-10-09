/* To Do List
 Background Color, Images, Text, Buttons
 Create the 3x3 Grid first, then recreate with changes
 Then Move Code
 The clean code with Loops
 */

//Global Variables
color circleRed = #FF0303, white=255, black=0, pink=#FF00E6, brown=#BC6F2F, blue=#00B0FF, orange=#FFAF00;
color yellow1=#FFF300;
Boolean turnOnYellow1=false, turnOnPink=false, turnOnBrown=false, turnOnBlue=false, turnOnOrange=false, turnOnMeasles = false, turnOnImage = false, turnOnDraw = true;
float ptDiameter, rectWidth, rectHeight;
float pt1X, pt1Y, pt2X, pt2Y, pt3X, pt3Y, pt4X, pt4Y;
float pt5X, pt5Y, pt6X, pt6Y, pt7X, pt7Y, pt8X, pt8Y;
float pt9X, pt9Y, pt10X, pt10Y, pt11X, pt11Y, pt12X, pt12Y;
float pt13X, pt13Y, pt14X, pt14Y, pt15X, pt15Y, pt16X, pt16Y;
float button1X, button1Y, button1Width, button1Height;
float button2X, button2Y, button2Width, button2Height;
float button3X, button3Y, button3Width, button3Height;
float button4X, button4Y, button4Width, button4Height;
float button5X, button5Y, button5Width, button5Height;
float button6X, button6Y, button6Width, button6Height;
float button7X, button7Y, button7Width, button7Height;
float button8X, button8Y, button8Width, button8Height;
float button9X, button9Y, button9Width, button9Height;
float imageStartWidth, imageStartHeight, imageWidth, imageHeight;
float imageWidthRatio;
float imageHeightRatio;
PImage pic;

void setup() {
  size(800, 700);
  pic = loadImage("https://www.alberniweather.ca/wp-content/uploads/2015/06/image40.jpg");
  imageWidthRatio = 1920.0/1080.0;
  imageHeightRatio = 1080.0/1080.0;
  imageStartWidth = width*0/16;
  imageStartHeight = height*0/16;
  imageWidth = width*imageWidthRatio;
  imageHeight = height*imageHeightRatio;

  ptDiameter = width * 1 / 27.77777777;
  rectWidth = width*1/3;
  rectHeight = height*1/3;
  //
  pt1X = pt5X = pt9X = pt13X = width*0;
  pt2X = pt6X = pt10X = pt14X = width*1/3;
  pt3X = pt7X = pt11X = pt15X = width*2/3;
  pt4X = pt8X = pt12X = pt16X = width*3/3;
  //
  pt1Y = pt2Y = pt3Y = pt4Y =  height*0;
  pt5Y = pt6Y = pt7Y = pt8Y = height*1/3;
  pt9Y = pt10Y = pt11Y = pt12Y = height*2/3;
  pt13Y = pt14Y = pt15Y = pt16Y= height*3/3;
  //
  //Button to illustrate arithmetic
  button1X = width * 1/12; //Section 1, subsection 1
  button1Y = height * 1/15; //Section 1, subsection 1
  button1Width = width * 1/3 * 1/2;
  button1Height = height * 1/3 * 1/2;
  //
  //Button to illustrate arithmetic
  button2X = width * 5/12; //Section 2, subsection 1: denominator is 3*2, numerator is counted
  button2Y = height * 5/12 ; //Section 2, subsection 0: denominator is 3*2, numerator is counted
  button2Width = width * 1/3 * 1/2;
  button2Height = height * 1/3 * 1/2;
  //
  //Button to illustrate arithmetic
  button3X = width * 12/16; //Section 3, subsection 2: denominator is 3*5, numerator is counted
  button3Y = height * 12/16; //Section 3, subsection 4: denominator is 3*5, numerator is counted
  button3Width = width * 1/3 * 1/2;
  button3Height = height * 1/3 * 1/2;

  //Last Button to Test Concept of Buttons
  button4X = width*12/16; 
  button4Y = height*1/15; 
  button4Width = width* 1/3 * 1/2;
  button4Height = height* 1/3 * 1/2;

  button5X = width*5/12; 
  button5Y = height*1/15; 
  button5Width = width* 1/3 * 1/2;
  button5Height = height* 1/3 * 1/2;


  button6X = width*12/16; 
  button6Y = height*5/12; 
  button6Width = width* 1/3 * 1/2;
  button6Height = height* 1/3 * 1/2;

  button7X = width*1/12; 
  button7Y = height*5/12; 
  button7Width = width* 1/3 * 1/2;
  button7Height = height* 1/3 * 1/2;

  button8X = width*1/12; 
  button8Y = height*12/16; 
  button8Width = width* 1/3 * 1/2;
  button8Height = height* 1/3 * 1/2;

  button9X = width*5/12; 
  button9Y = height*12/16; 
  button9Width = width* 1/3 * 1/2;
  button9Height = height* 1/3 * 1/2;

  setup1();
}//End setup

void draw() {

  //fill(white);
  rect(pt1X, pt1Y, rectWidth, rectHeight);
  //Bug: must press reset, Btn#4, each time to reset colour
  if (turnOnYellow1 == true ) {
    fill(yellow1);
  }
  if (turnOnPink == true) {
    fill(pink);
  }
  if (turnOnBrown == true) {
    fill(brown);
  }
  if (turnOnBlue == true) {
    fill(blue);
  }
  if (turnOnDraw == false) {                                                                 //if Draw Code starts//
    //fill(white);
   
  rect(pt1X, pt1Y, rectWidth, rectHeight);
  //Bug: must press reset, Btn#4, each time to reset colour
  if (turnOnYellow1 == true ) {
    fill(yellow1);
  }
  if (turnOnPink == true) {
    fill(pink);
  }
  if (turnOnBrown == true) {
    fill(brown);
  }
  if (turnOnBlue == true) {
    fill(blue);
  }

  /* if (turnOnOrange == true) {
   fill(orange)
   }
   */
  //
  rect(pt2X, pt2Y, rectWidth, rectHeight);
  fill(white);
  rect(pt3X, pt3Y, rectWidth, rectHeight);
  //
  rect(pt5X, pt5Y, rectWidth, rectHeight);
  rect(pt6X, pt6Y, rectWidth, rectHeight);
  rect(pt7X, pt7Y, rectWidth, rectHeight);
  //
  rect(pt9X, pt9Y, rectWidth, rectHeight);
  rect(pt10X, pt10Y, rectWidth, rectHeight);
  rect(pt11X, pt11Y, rectWidth, rectHeight);

  //

  //Button Rectangles
  if ( mouseX>=button1X && mouseX<=button1X+button1Width && mouseY>=button1Y && mouseY<=button1Y+button1Height) {
    fill(yellow1);
    rect(button1X, button1Y, button1Width, button1Height);
  } else {
    fill(black);
    rect(button1X, button1Y, button1Width, button1Height);
  }
  if ( mouseX>=button2X && mouseX<=button2X+button2Width && mouseY>=button2Y && mouseY<=button2Y+button2Height) {
    fill(yellow1);
    rect(button2X, button2Y, button2Width, button2Height);
  } else {
    fill(black);
    rect(button2X, button2Y, button2Width, button2Height);
  }
  if ( mouseX>=button3X && mouseX<=button3X+button3Width && mouseY>=button3Y && mouseY<=button3Y+button3Height) {
    fill(yellow1);
    rect(button3X, button3Y, button3Width, button3Height);
  } else {
    fill(black);
    rect(button3X, button3Y, button3Width, button3Height);
  }
  if ( mouseX>=button4X && mouseX<=button4X+button4Width && mouseY>=button4Y && mouseY<=button4Y+button4Height) {
    fill(yellow1);
    rect(button4X, button4Y, button4Width, button4Height);
  } else {
    fill(black);
    rect(button4X, button4Y, button4Width, button4Height);
  }
  if ( mouseX>=button5X && mouseX<=button5X+button5Width && mouseY>=button5Y && mouseY<=button5Y+button5Height) {
    fill(yellow1);
    rect(button5X, button5Y, button5Width, button5Height);
  } else {
    fill(black);
    rect(button5X, button5Y, button5Width, button5Height);
  }
  if ( mouseX>=button6X && mouseX<=button6X+button6Width && mouseY>=button6Y && mouseY<=button6Y+button1Height) {
    fill(yellow1);
    rect(button6X, button6Y, button6Width, button6Height);
  } else {
    fill(black);
    rect(button6X, button6Y, button6Width, button6Height);
  }
  if ( mouseX>=button7X && mouseX<=button7X+button7Width && mouseY>=button7Y && mouseY<=button7Y+button7Height) {
    fill(yellow1);
    rect(button7X, button7Y, button7Width, button7Height);
  } else {
    fill(black);
    rect(button7X, button7Y, button7Width, button7Height);
  }
  if ( mouseX>=button8X && mouseX<=button8X+button8Width && mouseY>=button8Y && mouseY<=button8Y+button8Height) {
    fill(yellow1);
    rect(button8X, button8Y, button8Width, button8Height);
  } else {
    fill(black);
    rect(button8X, button8Y, button8Width, button8Height);
  }
  if ( mouseX>=button9X && mouseX<=button9X+button9Width && mouseY>=button9Y && mouseY<=button9Y+button9Height) {
    fill(yellow1);
    rect(button9X, button9Y, button9Width, button9Height);
  } else {
    fill(black);
    rect(button9X, button9Y, button9Width, button9Height);
  }
  fill(black); //Reset all IF-ELSE
  //
  
  ellipse(pt1X, pt1Y, ptDiameter, ptDiameter);
  ellipse(pt2X, pt2Y, ptDiameter, ptDiameter);
  ellipse(pt3X, pt3Y, ptDiameter, ptDiameter);
  ellipse(pt5X, pt5Y, ptDiameter, ptDiameter);
  ellipse(pt6X, pt6Y, ptDiameter, ptDiameter);
  ellipse(pt7X, pt7Y, ptDiameter, ptDiameter);
  ellipse(pt9X, pt9Y, ptDiameter, ptDiameter);
  ellipse(pt10X, pt10Y, ptDiameter, ptDiameter);
  ellipse(pt11X, pt11Y, ptDiameter, ptDiameter);
  //
  fill(circleRed);
  ellipse(pt4X, pt4Y, ptDiameter, ptDiameter);
  ellipse(pt8X, pt8Y, ptDiameter, ptDiameter);
  ellipse(pt12X, pt12Y, ptDiameter, ptDiameter);
  ellipse(pt13X, pt13Y, ptDiameter, ptDiameter);
  ellipse(pt14X, pt14Y, ptDiameter, ptDiameter);
  ellipse(pt15X, pt15Y, ptDiameter, ptDiameter);
  ellipse(pt16X, pt16Y, ptDiameter, ptDiameter);
  fill(white);



  String titlea = "Button 1 / Yellow";
  PFont titleFonta;
  titleFonta = createFont ("Times New Roman Bold", 30);
  fill(0); 
  // textAlign(CENTER, CENTER);
  textFont(titleFonta, 15);
  text(titlea, width*0/50, height*0/16, width*8/24, height*1/16 );
  fill(255);

  String title2a = "Button 3 / Clear Color";
  PFont titleFont2a;
  titleFont2a = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFonta, 15);
  text(title2a, width*20/34, height*0/16, width*1/2, height*1/16 );
  fill(255);

  String title3a = "Button 2 / Blue";
  PFont titleFont3a;
  titleFonta = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFonta, 15);
  text(title3a, width*9/34, height*0/16, width*1/2, height*1/16 );
  fill(255);

  String title4a = "Button 4 / No Function";
  PFont titleFont4a;
  titleFont4a = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFonta, 15);
  text(title4a, width*0/50, height*7/20, width*8/24, height*1/16 );
  fill(255);

  String title5a = "Button 5 / Pink";
  PFont titleFont5a;
  titleFont5a = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFonta, 15);
  text(title5a, width*8/34, height*7/20, width*1/2, height*1/16 );
  fill(255);

  String title6a = "Button 6 / Measles (not fully working)";
  PFont titleFont6a;
  titleFont6a = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFonta, 15);
  text(title6a, width*20/34, height*7/20, width*1/2, height*1/16 );
  fill(255);

  String title7a = "Button 7 / Image ";
  PFont titleFont7a;
  titleFont7a = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFonta, 15);
  text(title7a, width*0/50, height*22/32, width*8/24, height*1/16 );
  fill(255);

  String title8a = "Button 8 / No Function";
  PFont titleFont8a;
  titleFont8a = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFonta, 15);
  text(title8a, width*9/34, height*22/32, width*1/2, height*1/16 );
  fill(255);

  String title9a = "Button 9 / Brown";
  PFont titleFont9a;
  titleFont9a = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFonta, 15);
  text(title9a, width*20/34, height*22/32, width*1/2, height*1/16 );
  fill(255);

if (turnOnImage == true) {
    population();
    rect(imageStartWidth, imageStartHeight, imageWidth, imageHeight);
    image (pic, imageStartWidth, imageStartHeight, imageWidth, imageHeight);
    //rect(width*15/16, height*0, width*15/16, height*1/14);

    if (mouseX>buttonX && mouseX<width && mouseY>height*0 && mouseY<buttonHeight) { //Button Hoverover;
      buttonColour = yellow; //Hoverover
    } else {
      buttonColour = purple;
    }// End IF
    String title1 = "X";
    PFont titleFont1;
    titleFont1 = createFont ("Times New Roman Bold", 30);
    fill(buttonColour); 
    rect(buttonX, buttonY, buttonWidth, buttonHeight);
    fill(0);
    textAlign(CENTER, CENTER);
    textFont(titleFont1, 20);
    text(title1, width*23/32, height*0/16, width*1/2, height*1/16 );

    fill(colorReset);
    String title0 = "Hey Mercer";
    PFont titleFont0;
    titleFont0 = createFont ("Times New Roman Bold", 55);
    text(title0, width*8/32, height*2/16, width*1/2, height*1/16 );
    textAlign(CENTER, CENTER);
    textFont(titleFont0, 50);
    fill(colorReset);
  }
  
  }
                                                                                 //If Draw code ends
  /* if (turnOnOrange == true) {
   fill(orange)
   }
   */
  //
  rect(pt2X, pt2Y, rectWidth, rectHeight);
  fill(white);
  rect(pt3X, pt3Y, rectWidth, rectHeight);
  //
  rect(pt5X, pt5Y, rectWidth, rectHeight);
  rect(pt6X, pt6Y, rectWidth, rectHeight);
  rect(pt7X, pt7Y, rectWidth, rectHeight);
  //
  rect(pt9X, pt9Y, rectWidth, rectHeight);
  rect(pt10X, pt10Y, rectWidth, rectHeight);
  rect(pt11X, pt11Y, rectWidth, rectHeight);

  //

  //Button Rectangles
  if ( mouseX>=button1X && mouseX<=button1X+button1Width && mouseY>=button1Y && mouseY<=button1Y+button1Height) {
    fill(yellow1);
    rect(button1X, button1Y, button1Width, button1Height);
  } else {
    fill(black);
    rect(button1X, button1Y, button1Width, button1Height);
  }
  
  if ( mouseX>=button2X && mouseX<=button2X+button2Width && mouseY>=button2Y && mouseY<=button2Y+button2Height) {
    fill(yellow1);
    rect(button2X, button2Y, button2Width, button2Height);
  } else {
    fill(black);
    rect(button2X, button2Y, button2Width, button2Height);
  }
  if ( mouseX>=button3X && mouseX<=button3X+button3Width && mouseY>=button3Y && mouseY<=button3Y+button3Height) {
    fill(yellow1);
    rect(button3X, button3Y, button3Width, button3Height);
  } else {
    fill(black);
    rect(button3X, button3Y, button3Width, button3Height);
  }
  if ( mouseX>=button4X && mouseX<=button4X+button4Width && mouseY>=button4Y && mouseY<=button4Y+button4Height) {
    fill(yellow1);
    rect(button4X, button4Y, button4Width, button4Height);
  } else {
    fill(black);
    rect(button4X, button4Y, button4Width, button4Height);
  }
  if ( mouseX>=button5X && mouseX<=button5X+button5Width && mouseY>=button5Y && mouseY<=button5Y+button5Height) {
    fill(yellow1);
    rect(button5X, button5Y, button5Width, button5Height);
  } else {
    fill(black);
    rect(button5X, button5Y, button5Width, button5Height);
  }
  if ( mouseX>=button6X && mouseX<=button6X+button6Width && mouseY>=button6Y && mouseY<=button6Y+button1Height) {
    fill(yellow1);
    rect(button6X, button6Y, button6Width, button6Height);
  } else {
    fill(black);
    rect(button6X, button6Y, button6Width, button6Height);
  }
  if ( mouseX>=button7X && mouseX<=button7X+button7Width && mouseY>=button7Y && mouseY<=button7Y+button7Height) {
    fill(yellow1);
    rect(button7X, button7Y, button7Width, button7Height);
  } else {
    fill(black);
    rect(button7X, button7Y, button7Width, button7Height);
  }
  if ( mouseX>=button8X && mouseX<=button8X+button8Width && mouseY>=button8Y && mouseY<=button8Y+button8Height) {
    fill(yellow1);
    rect(button8X, button8Y, button8Width, button8Height);
  } else {
    fill(black);
    rect(button8X, button8Y, button8Width, button8Height);
  }
  if ( mouseX>=button9X && mouseX<=button9X+button9Width && mouseY>=button9Y && mouseY<=button9Y+button9Height) {
    fill(yellow1);
    rect(button9X, button9Y, button9Width, button9Height);
  } else {
    fill(black);
    rect(button9X, button9Y, button9Width, button9Height);
  }
  fill(black); //Reset all IF-ELSE
  //
  ellipse(pt1X, pt1Y, ptDiameter, ptDiameter);
  ellipse(pt2X, pt2Y, ptDiameter, ptDiameter);
  ellipse(pt3X, pt3Y, ptDiameter, ptDiameter);
  ellipse(pt5X, pt5Y, ptDiameter, ptDiameter);
  ellipse(pt6X, pt6Y, ptDiameter, ptDiameter);
  ellipse(pt7X, pt7Y, ptDiameter, ptDiameter);
  ellipse(pt9X, pt9Y, ptDiameter, ptDiameter);
  ellipse(pt10X, pt10Y, ptDiameter, ptDiameter);
  ellipse(pt11X, pt11Y, ptDiameter, ptDiameter);
  //
  fill(circleRed);
  ellipse(pt4X, pt4Y, ptDiameter, ptDiameter);
  ellipse(pt8X, pt8Y, ptDiameter, ptDiameter);
  ellipse(pt12X, pt12Y, ptDiameter, ptDiameter);
  ellipse(pt13X, pt13Y, ptDiameter, ptDiameter);
  ellipse(pt14X, pt14Y, ptDiameter, ptDiameter);
  ellipse(pt15X, pt15Y, ptDiameter, ptDiameter);
  ellipse(pt16X, pt16Y, ptDiameter, ptDiameter);
  fill(white);



  String title = "Button 1 / Yellow";
  PFont titleFont;
  titleFont = createFont ("Times New Roman Bold", 30);
  fill(0); 
  // textAlign(CENTER, CENTER);
  textFont(titleFont, 15);
  text(title, width*0/50, height*0/16, width*8/24, height*1/16 );
  fill(255);

  String title2 = "Button 3 / Clear Color";
  PFont titleFont2;
  titleFont2 = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFont, 15);
  text(title2, width*20/34, height*0/16, width*1/2, height*1/16 );
  fill(255);

  String title3 = "Button 2 / Blue";
  PFont titleFont3;
  titleFont = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFont, 15);
  text(title3, width*9/34, height*0/16, width*1/2, height*1/16 );
  fill(255);

  String title4 = "Button 4 / No Function";
  PFont titleFont4;
  titleFont4 = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFont, 15);
  text(title4, width*0/50, height*7/20, width*8/24, height*1/16 );
  fill(255);

  String title5 = "Button 5 / Pink";
  PFont titleFont5;
  titleFont5 = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFont, 15);
  text(title5, width*8/34, height*7/20, width*1/2, height*1/16 );
  fill(255);

  String title6 = "Button 6 / Measles (not fully working)";
  PFont titleFont6;
  titleFont6 = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFont, 15);
  text(title6, width*20/34, height*7/20, width*1/2, height*1/16 );
  fill(255);

  String title7 = "Button 7 / Image ";
  PFont titleFont7;
  titleFont7 = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFont, 15);
  text(title7, width*0/50, height*22/32, width*8/24, height*1/16 );
  fill(255);

  String title8 = "Button 8 / No Function";
  PFont titleFont8;
  titleFont8 = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFont, 15);
  text(title8, width*9/34, height*22/32, width*1/2, height*1/16 );
  fill(255);

  String title9 = "Button 9 / Brown";
  PFont titleFont9;
  titleFont9 = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFont, 15);
  text(title9, width*20/34, height*22/32, width*1/2, height*1/16 );
  fill(255);

  if (turnOnMeasles == true) {
    draws();
  } else {                                                                                      // IF draw code starts again
  //fill(white);
  rect(pt1X, pt1Y, rectWidth, rectHeight);
  //Bug: must press reset, Btn#4, each time to reset colour
  if (turnOnYellow1 == true ) {
    fill(yellow1);
  }
  if (turnOnPink == true) {
    fill(pink);
  }
  if (turnOnBrown == true) {
    fill(brown);
  }
  if (turnOnBlue == true) {
    fill(blue);
  }

  /* if (turnOnOrange == true) {
   fill(orange)
   }
   */
  //
  rect(pt2X, pt2Y, rectWidth, rectHeight);
  fill(white);
  rect(pt3X, pt3Y, rectWidth, rectHeight);
  //
  rect(pt5X, pt5Y, rectWidth, rectHeight);
  rect(pt6X, pt6Y, rectWidth, rectHeight);
  rect(pt7X, pt7Y, rectWidth, rectHeight);
  //
  rect(pt9X, pt9Y, rectWidth, rectHeight);
  rect(pt10X, pt10Y, rectWidth, rectHeight);
  rect(pt11X, pt11Y, rectWidth, rectHeight);

  //

  //Button Rectangles
  if ( mouseX>=button1X && mouseX<=button1X+button1Width && mouseY>=button1Y && mouseY<=button1Y+button1Height) {
    fill(yellow1);
    rect(button1X, button1Y, button1Width, button1Height);
  } else {
    fill(black);
    rect(button1X, button1Y, button1Width, button1Height);
  }
  if ( mouseX>=button2X && mouseX<=button2X+button2Width && mouseY>=button2Y && mouseY<=button2Y+button2Height) {
    fill(yellow1);
    rect(button2X, button2Y, button2Width, button2Height);
  } else {
    fill(black);
    rect(button2X, button2Y, button2Width, button2Height);
  }
  if ( mouseX>=button3X && mouseX<=button3X+button3Width && mouseY>=button3Y && mouseY<=button3Y+button3Height) {
    fill(yellow1);
    rect(button3X, button3Y, button3Width, button3Height);
  } else {
    fill(black);
    rect(button3X, button3Y, button3Width, button3Height);
  }
  if ( mouseX>=button4X && mouseX<=button4X+button4Width && mouseY>=button4Y && mouseY<=button4Y+button4Height) {
    fill(yellow1);
    rect(button4X, button4Y, button4Width, button4Height);
  } else {
    fill(black);
    rect(button4X, button4Y, button4Width, button4Height);
  }
  if ( mouseX>=button5X && mouseX<=button5X+button5Width && mouseY>=button5Y && mouseY<=button5Y+button5Height) {
    fill(yellow1);
    rect(button5X, button5Y, button5Width, button5Height);
  } else {
    fill(black);
    rect(button5X, button5Y, button5Width, button5Height);
  }
  if ( mouseX>=button6X && mouseX<=button6X+button6Width && mouseY>=button6Y && mouseY<=button6Y+button1Height) {
    fill(yellow1);
    rect(button6X, button6Y, button6Width, button6Height);
  } else {
    fill(black);
    rect(button6X, button6Y, button6Width, button6Height);
  }
  if ( mouseX>=button7X && mouseX<=button7X+button7Width && mouseY>=button7Y && mouseY<=button7Y+button7Height) {
    fill(yellow1);
    rect(button7X, button7Y, button7Width, button7Height);
  } else {
    fill(black);
    rect(button7X, button7Y, button7Width, button7Height);
  }
  if ( mouseX>=button8X && mouseX<=button8X+button8Width && mouseY>=button8Y && mouseY<=button8Y+button8Height) {
    fill(yellow1);
    rect(button8X, button8Y, button8Width, button8Height);
  } else {
    fill(black);
    rect(button8X, button8Y, button8Width, button8Height);
  }
  if ( mouseX>=button9X && mouseX<=button9X+button9Width && mouseY>=button9Y && mouseY<=button9Y+button9Height) {
    fill(yellow1);
    rect(button9X, button9Y, button9Width, button9Height);
  } else {
    fill(black);
    rect(button9X, button9Y, button9Width, button9Height);
  }
  fill(black); //Reset all IF-ELSE
  //
  ellipse(pt1X, pt1Y, ptDiameter, ptDiameter);
  ellipse(pt2X, pt2Y, ptDiameter, ptDiameter);
  ellipse(pt3X, pt3Y, ptDiameter, ptDiameter);
  ellipse(pt5X, pt5Y, ptDiameter, ptDiameter);
  ellipse(pt6X, pt6Y, ptDiameter, ptDiameter);
  ellipse(pt7X, pt7Y, ptDiameter, ptDiameter);
  ellipse(pt9X, pt9Y, ptDiameter, ptDiameter);
  ellipse(pt10X, pt10Y, ptDiameter, ptDiameter);
  ellipse(pt11X, pt11Y, ptDiameter, ptDiameter);
  //
  fill(circleRed);
  ellipse(pt4X, pt4Y, ptDiameter, ptDiameter);
  ellipse(pt8X, pt8Y, ptDiameter, ptDiameter);
  ellipse(pt12X, pt12Y, ptDiameter, ptDiameter);
  ellipse(pt13X, pt13Y, ptDiameter, ptDiameter);
  ellipse(pt14X, pt14Y, ptDiameter, ptDiameter);
  ellipse(pt15X, pt15Y, ptDiameter, ptDiameter);
  ellipse(pt16X, pt16Y, ptDiameter, ptDiameter);
  fill(white);



  String titlea = "Button 1 / Yellow";
  PFont titleFonta;
  titleFonta = createFont ("Times New Roman Bold", 30);
  fill(0); 
  // textAlign(CENTER, CENTER);
  textFont(titleFont, 15);
  text(titlea, width*0/50, height*0/16, width*8/24, height*1/16 );
  fill(255);

  String title2a = "Button 3 / Clear Color";
  PFont titleFont2a;
  titleFont2a = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFonta, 15);
  text(title2a, width*20/34, height*0/16, width*1/2, height*1/16 );
  fill(255);

  String title3a = "Button 2 / Blue";
  PFont titleFont3a;
  titleFonta = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFonta, 15);
  text(title3a, width*9/34, height*0/16, width*1/2, height*1/16 );
  fill(255);

  String title4a = "Button 4 / No Function";
  PFont titleFont4a;
  titleFont4a = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFonta, 15);
  text(title4a, width*0/50, height*7/20, width*8/24, height*1/16 );
  fill(255);

  String title5a = "Button 5 / Pink";
  PFont titleFont5a;
  titleFont5a = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFonta, 15);
  text(title5a, width*8/34, height*7/20, width*1/2, height*1/16 );
  fill(255);

  String title6a = "Button 6 / Measles (not fully working)";
  PFont titleFont6a;
  titleFont6a = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFonta, 15);
  text(title6a, width*20/34, height*7/20, width*1/2, height*1/16 );
  fill(255);

  String title7a = "Button 7 / Image ";
  PFont titleFont7a;
  titleFont7a = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFont, 15);
  text(title7a, width*0/50, height*22/32, width*8/24, height*1/16 );
  fill(255);

  String title8a = "Button 8 / No Function";
  PFont titleFont8a;
  titleFont8 = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFont, 15);
  text(title8, width*9/34, height*22/32, width*1/2, height*1/16 );
  fill(255);

  String title9a = "Button 9 / Brown";
  PFont titleFont9a;
  titleFont9 = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFont, 15);
  text(title9, width*20/34, height*22/32, width*1/2, height*1/16 );
  fill(255);

if (turnOnImage == true) {
    population();
    rect(imageStartWidth, imageStartHeight, imageWidth, imageHeight);
    image (pic, imageStartWidth, imageStartHeight, imageWidth, imageHeight);
    //rect(width*15/16, height*0, width*15/16, height*1/14);

    if (mouseX>buttonX && mouseX<width && mouseY>height*0 && mouseY<buttonHeight) { //Button Hoverover;
      buttonColour = yellow; //Hoverover
    } else {
      buttonColour = purple;
    }// End IF
    String title1 = "X";
    PFont titleFont1;
    titleFont1 = createFont ("Times New Roman Bold", 30);
    fill(buttonColour); 
    rect(buttonX, buttonY, buttonWidth, buttonHeight);
    fill(0);
    textAlign(CENTER, CENTER);
    textFont(titleFont1, 20);
    text(title1, width*23/32, height*0/16, width*1/2, height*1/16 );

    fill(colorReset);
    String title0 = "Hey Mercer";
    PFont titleFont0;
    titleFont0 = createFont ("Times New Roman Bold", 55);
    text(title0, width*8/32, height*2/16, width*1/2, height*1/16 );
    textAlign(CENTER, CENTER);
    textFont(titleFont0, 50);
    fill(colorReset);
  }
}
                                                                                                                 //IF draw code ends again

  if (turnOnImage == true) {
    population();
    rect(imageStartWidth, imageStartHeight, imageWidth, imageHeight);
    image (pic, imageStartWidth, imageStartHeight, imageWidth, imageHeight);
    //rect(width*15/16, height*0, width*15/16, height*1/14);

    if (mouseX>buttonX && mouseX<width && mouseY>height*0 && mouseY<buttonHeight) { //Button Hoverover;
      buttonColour = yellow; //Hoverover
    } else {
      buttonColour = purple;
    }// End IF
    String title1 = "X";
    PFont titleFont1;
    titleFont1 = createFont ("Times New Roman Bold", 30);
    fill(buttonColour); 
    rect(buttonX, buttonY, buttonWidth, buttonHeight);
    fill(0);
    textAlign(CENTER, CENTER);
    textFont(titleFont1, 20);
    text(title1, width*23/32, height*0/16, width*1/2, height*1/16 );

    fill(colorReset);
    String title0 = "Hey Mercer";
    PFont titleFont0;
    titleFont0 = createFont ("Times New Roman Bold", 55);
    text(title0, width*8/32, height*2/16, width*1/2, height*1/16 );
    textAlign(CENTER, CENTER);
    textFont(titleFont0, 50);
    fill(colorReset);
  }
}

void mousePressed() {
  if ( mouseX>=button1X && mouseX<=button1X+button1Width && mouseY>=button1Y && mouseY<=button1Y+button1Height) {
    println("Btn 1 activated");
    turnOnYellow1 = true;
  }
  if ( mouseX>=button2X && mouseX<=button2X+button2Width && mouseY>=button2Y && mouseY<=button2Y+button2Height) {
    println("Btn 5 activated");
    turnOnPink = true;
  }
  if ( mouseX>=button3X && mouseX<=button3X+button3Width && mouseY>=button3Y && mouseY<=button3Y+button3Height) {
    println("Btn 9 activated");
    turnOnBrown = true;
  }
  if ( mouseX>=button4X && mouseX<=button4X+button4Width && mouseY>=button4Y && mouseY<=button4Y+button4Height) {
    println("Btn 3 activated");
    turnOnYellow1 = false;
    turnOnPink = false;
    turnOnBrown = false;
    turnOnBlue = false;
  }
  if ( mouseX>=button5X && mouseX<=button5X+button5Width && mouseY>=button5Y && mouseY<=button5Y+button5Height) {
    println("Btn 2 activated");
    turnOnBlue = true;
  }
  if ( mouseX>=button6X && mouseX<=button6X+button6Width && mouseY>=button6Y && mouseY<=button6Y+button6Height) {
    println("Btn 6 activated");
    turnOnMeasles = true;
    turnOnDraw = false;
  }

  if ( mouseX>=button8X && mouseX<=button8X+button8Width && mouseY>=button8Y && mouseY<=button8Y+button8Height) {
    println("Btn 8 activated");
    turnOnImage = true;
  }
  /*
  if ( mouseX>=button1X && mouseX<=button1X+button1Width && mouseY>=button1Y && mouseY<=button1Y+button1Height) {
   println("Btn 1 activated");
   turnOnYellow1 = true;
   }
   if ( mouseX>=button1X && mouseX<=button1X+button1Width && mouseY>=button1Y && mouseY<=button1Y+button1Height) {
   println("Btn 1 activated");
   turnOnYellow1 = true;
   }
   */
  if (mouseX>buttonX && mouseX<width && mouseY>height*0 && mouseY<buttonHeight)
    turnOnImage=false;



  pressedMouse();
}
