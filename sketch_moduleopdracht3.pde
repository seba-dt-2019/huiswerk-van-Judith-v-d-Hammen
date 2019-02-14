int squarePositionX = constrain(10, 0, width);
int squarePositionY  = constrain(10, 0, height);
int circlePositionX = 333;
int circlePositionY = 383;
int siZe = 50; 
boolean pickup = false;

void setup(){
  size(500, 500);
  
}

void draw(){
  background(0);
  fill(#58B6F2);
  rect(squarePositionX, squarePositionY, siZe, siZe);
  fill(#FF0303);
  ellipse(circlePositionX, circlePositionY, siZe, siZe);
    
}


void keyPressed(){
      switch(keyCode){
      case UP:
        squarePositionY = squarePositionY - siZe;
        break;
      case RIGHT:
        squarePositionX = squarePositionX + siZe;
        break;
      case DOWN:
        squarePositionY = squarePositionY + siZe;
        break;
       case LEFT:
         squarePositionX = squarePositionX - siZe;
         break;
    } 
    
    if (key == ENTER && pickup == false){
      circlePositionX = squarePositionX;
      circlePositionY = squarePositionY;
      pickup = true;
    }
   else if (key == ENTER && pickup == true){
     pickup = false;
   }
}
