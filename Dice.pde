int diceNum = 0;
int diceSize = 100;
//int diceSize = 100;
int pipSize = 0;
Die one; 

//Morris says be there at noon 

void setup()
{
  size(1000, 1200);
  background(0);
  noLoop();
}
void draw()
{
  background(0);
  //your code here
  for(int diceX = 20; diceX < 900; diceX+=115){
    for(int diceY = 20; diceY < 900; diceY+=130){
    
    Die one = new Die(diceX,diceY);
       one.show();
    }
    
    println(mouseX,mouseY);
  
  } 
//  Die one = new Die(20, 20);
 
  //To next, put for loop in the draw function)
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int theX, theY;
  Die(int x, int y) //constructor
  {
    //variable initializations here

    theX = x;
    theY = y;
    pipSize = pipSize/5;
    roll();
  }
  void roll()
  {
   diceNum = (int)(Math.random()*6)+1;
  }

  //your code here

  void show()
  {

    //the dice itself
//    fill(252, 250, 224);
    strokeWeight(3);
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
 rect(theX, theY, diceSize, diceSize, 10);

//    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
//    ellipse(theX+50, theY+50, 30, 30);   
    //the dots on the dice
    if (diceNum == 1) {
      noStroke();
      fill(255);
     rect(theX, theY, diceSize, diceSize, 10);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(theX+50, theY+55, diceSize/5, diceSize/5);
    } else if (diceNum == 2) {
      noStroke();
      fill(255);
      rect(theX, theY, diceSize, diceSize, 10);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(theX+diceSize/3, theY+diceSize/3, diceSize/5, diceSize/5);
      ellipse(theX+2*diceSize/3, theY+2*diceSize/3, diceSize/5, diceSize/5);
    } else if (diceNum == 3) {
      noStroke();
      fill(255);
      rect(theX, theY, diceSize, diceSize, 10);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(theX+diceSize/4, theY+diceSize/4, diceSize/5, diceSize/5);
      ellipse(theX+diceSize/4*2, theY+diceSize/4*2, diceSize/5, diceSize/5);
      ellipse(theX+diceSize/4*3, theY+diceSize/4*3, diceSize/5, diceSize/5);
    } else if (diceNum == 4) {
      noStroke();
      fill(255);
      rect(theX, theY, diceSize, diceSize, 10);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(theX+25, theY+25, diceSize/5, diceSize/5);
      ellipse(theX+75, theY+25, diceSize/5, diceSize/5);    
      ellipse(theX+25, theY+75, diceSize/5, diceSize/5);
      ellipse(theX+75, theY+75, diceSize/5, diceSize/5);
    } else if (diceNum == 5) {
      noStroke();
      fill(255);
      rect(theX, theY, diceSize, diceSize, 10);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(theX+25, theY+25, diceSize/5, diceSize/5);
      ellipse(theX+75, theY+25, diceSize/5, diceSize/5);    
      ellipse(theX+25, theY+80, diceSize/5, diceSize/5);
      ellipse(theX+75, theY+80, diceSize/5, diceSize/5);
      ellipse(theX+50, theY+55, diceSize/5, diceSize/5);
    } else if (diceNum == 6) {
      noStroke();
      fill(255);
      rect(theX, theY, diceSize, diceSize, 10);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(theX+20, theY+25, diceSize/5, diceSize/5);
      ellipse(theX+50, theY+25, diceSize/5, diceSize/5); 
   ellipse(theX+80, theY+25, diceSize/5, diceSize/5);    
      ellipse(theX+20, theY+70, diceSize/5, diceSize/5);
      ellipse(theX+50, theY+70, diceSize/5, diceSize/5);
      ellipse(theX+80, theY+70, diceSize/5, diceSize/5); 
    } /*else {
     fill(0, 0, 255);
     noStroke();
     ellipse(theX+100, theY+100, 60, 60);
     } */
  }
} 
