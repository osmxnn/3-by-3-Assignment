/* To Do List
 Background Color, Images, Text, Buttons
 Create the 3x3 Grid first, then recreate with changes
 Then Move Code
 The clean code with Loops
 */

//Global Variables
color circleRed = #FF0303, white=255, black=0, pink=#FF00E6, brown=#BC6F2F, blue=#00B0FF, orange=#FFAF00;
color yellow=#FFF300;
Boolean turnOnYellow=false, turnOnPink=false, turnOnBrown=false, turnOnBlue=false, turnOnOrange=false;
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

void setup() {
  size(800, 700);
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
  
}

void draw() {
  //fill(white);
  rect(pt1X, pt1Y, rectWidth, rectHeight);
  //Bug: must press reset, Btn#4, each time to reset colour
  if (turnOnYellow == true ) {
    fill(yellow);
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
    fill(yellow);
    rect(button1X, button1Y, button1Width, button1Height);
  } else {
    fill(black);
    rect(button1X, button1Y, button1Width, button1Height);
  }
  if ( mouseX>=button2X && mouseX<=button2X+button2Width && mouseY>=button2Y && mouseY<=button2Y+button2Height) {
    fill(yellow);
    rect(button2X, button2Y, button2Width, button2Height);
  } else {
    fill(black);
    rect(button2X, button2Y, button2Width, button2Height);
  }
  if ( mouseX>=button3X && mouseX<=button3X+button3Width && mouseY>=button3Y && mouseY<=button3Y+button3Height) {
    fill(yellow);
    rect(button3X, button3Y, button3Width, button3Height);
  } else {
    fill(black);
    rect(button3X, button3Y, button3Width, button3Height);
  }
  if ( mouseX>=button4X && mouseX<=button4X+button4Width && mouseY>=button4Y && mouseY<=button4Y+button4Height) {
    fill(yellow);
    rect(button4X, button4Y, button4Width, button4Height);
  } else {
    fill(black);
    rect(button4X, button4Y, button4Width, button4Height);
  }
  if ( mouseX>=button5X && mouseX<=button5X+button5Width && mouseY>=button5Y && mouseY<=button5Y+button5Height) {
    fill(yellow);
    rect(button5X, button5Y, button5Width, button5Height);
  } else {
    fill(black);
    rect(button5X, button5Y, button5Width, button5Height);
  }
  if ( mouseX>=button6X && mouseX<=button6X+button6Width && mouseY>=button6Y && mouseY<=button6Y+button1Height) {
    fill(yellow);
    rect(button6X, button6Y, button6Width, button6Height);
  } else {
    fill(black);
    rect(button6X, button6Y, button6Width, button6Height);
  }
  if ( mouseX>=button7X && mouseX<=button7X+button7Width && mouseY>=button7Y && mouseY<=button7Y+button7Height) {
    fill(yellow);
    rect(button7X, button7Y, button7Width, button7Height);
  } else {
    fill(black);
    rect(button7X, button7Y, button7Width, button7Height);
  }
  if ( mouseX>=button8X && mouseX<=button8X+button8Width && mouseY>=button8Y && mouseY<=button8Y+button8Height) {
    fill(yellow);
    rect(button8X, button8Y, button8Width, button8Height);
  } else {
    fill(black);
    rect(button8X, button8Y, button8Width, button8Height);
  }
  if ( mouseX>=button9X && mouseX<=button9X+button9Width && mouseY>=button9Y && mouseY<=button9Y+button9Height) {
    fill(yellow);
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
  
   String title = "Button 1/ Yellow";
PFont titleFont;
titleFont = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFont, 15);
text(title, width*1/50, height*0/16, width*1/2, height*1/16 );
fill(255);

String titdle = "Button 2/ Clear Color";
PFont font2;
font2 = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFont, 15);
text(title, width*20/34, height*0/16, width*1/2, height*1/16 );
fill(255);
/*
String title = "Button 3/ Clear Color";
PFont titleFont;
titleFont = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFont, 15);
text(title, width*20/34, height*0/16, width*1/2, height*1/16 );
fill(255);

String title = "Button 4/ Clear Color";
PFont titleFont;
titleFont = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFont, 15);
text(title, width*20/34, height*0/16, width*1/2, height*1/16 );
fill(255);

String title = "Button 5/ Clear Color";
PFont titleFont;
titleFont = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFont, 15);
text(title, width*20/34, height*0/16, width*1/2, height*1/16 );
fill(255);

String title = "Button 6 / Clear Color";
PFont titleFont;
titleFont = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFont, 15);
text(title, width*20/34, height*0/16, width*1/2, height*1/16 );
fill(255);

String title = "Button 7/ Clear Color";
PFont titleFont;
titleFont = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFont, 15);
text(title, width*20/34, height*0/16, width*1/2, height*1/16 );
fill(255);

String title = "Button 8";
PFont titleFont;
titleFont = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFont, 15);
text(title, width*20/34, height*0/16, width*1/2, height*1/16 );
fill(255);

String title = "Button 9";
PFont titleFont;
titleFont = createFont ("Times New Roman Bold", 30);
  fill(0); 
  textAlign(CENTER, CENTER);
  textFont(titleFont, 15);
text(title, width*20/34, height*0/16, width*1/2, height*1/16 );
fill(255);
*/
}

void mousePressed() {
  if ( mouseX>=button1X && mouseX<=button1X+button1Width && mouseY>=button1Y && mouseY<=button1Y+button1Height) {
    println("Btn 1 activated");
    turnOnYellow = true;
  }
  if ( mouseX>=button2X && mouseX<=button2X+button2Width && mouseY>=button2Y && mouseY<=button2Y+button2Height) {
    println("Btn 2 activated");
    turnOnPink = true;
  }
  if ( mouseX>=button3X && mouseX<=button3X+button3Width && mouseY>=button3Y && mouseY<=button3Y+button3Height) {
    println("Btn 3 activated");
    turnOnBrown = true;
  }
  if ( mouseX>=button4X && mouseX<=button4X+button4Width && mouseY>=button4Y && mouseY<=button4Y+button4Height) {
    println("Btn 4 activated");
    turnOnYellow = false;
    turnOnPink = false;
    turnOnBrown = false;
  }
}
