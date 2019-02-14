int squarePositionX = 10;
int squarePositionY  = 10;
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
  
  if(pickup){
    circlePositionX = squarePositionX + (siZe/2);
    circlePositionY = squarePositionY + (siZe/2);
  }
    
}


void keyPressed(){
      switch(keyCode){
      case UP:
        squarePositionY = constrain(squarePositionY - siZe, 0, height- siZe);
        break;
      case RIGHT:
        squarePositionX = constrain(squarePositionX + siZe, 0, width - siZe);
        break;
      case DOWN:
        squarePositionY = constrain(squarePositionY + siZe, 0, height - siZe);
        break;
       case LEFT:
         squarePositionX = constrain(squarePositionX - siZe, 0, width);
         break;
    } 
    
    if (key == ENTER && pickup == false && vrachtjeDichtbijRobot()){
      
      pickup = true;
    }
   else if (key == ENTER && pickup == true){
     pickup = false;
   }
}

boolean vrachtjeDichtbijRobot(){
  int middelpuntVierkantX = squarePositionX + (siZe/2);
  int middelpuntVierkantY = squarePositionY + (siZe/2);
  
  float afstand = dist(middelpuntVierkantX, middelpuntVierkantY, circlePositionX, circlePositionY);
  
  return afstand < siZe;
  
}
