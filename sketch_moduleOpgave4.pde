int squareX;
int squareY;
int squareSize;
int circleX;
int circleY;
int circleSize;
boolean squarePressed = false;
int hit = 0;
int miss = 0;

void setup(){
  size(500, 300);
  squareX = width/2 + 50;
  squareY = 100;
  squareSize = 100;
  circleX = 25;
  circleY = height/2; 
  circleSize = 50;
  
}

void draw(){
background(0);
rectangle();
circle();

textSize(24);
  if(squarePressed == true){
    text("Stop", squareX + 10, squareY+ 25);
    circleX++;
    if(circleX == width){
    circleX = 0;
   }
  }
  else{
    text ("Start", squareX + 10, squareY+ 25);
  }
  
  text("raak!: " + hit + "gemist: " + miss, 20, 20);
  
}

void mouseClicked(){
  if(squarePressed == false && mouseX > squareX && mouseX < squareX + squareSize && mouseY > squareY){
    squarePressed = true;
  }
  else if (squarePressed == true && mouseX > squareX && mouseX < squareX + squareSize && mouseY > squareY){
    squarePressed = false;
  }
  if(mouseX > circleX && mouseX < circleX + circleSize && mouseY > circleY && mouseY < circleY + circleSize){
    hit++;
  }
  else{
    miss++;
  }
}

void circle(){
  noStroke();
  fill(#FF0307);
  ellipse(circleX, circleY, circleSize, circleSize);
  fill(255);
  ellipse(circleX - 1, circleY + 1, circleSize - 10, circleSize - 10);
  fill(#FF0307);
  ellipse(circleX - 3, circleY + 3, circleSize-25, circleSize - 25);
  fill(255);
  ellipse(circleX - 4, circleY + 4, circleSize - 40, circleSize - 40);

}

void rectangle(){
fill(#80CDEA);
  rect(squareX, squareY, squareSize, squareSize/2);
squareX = width/2 - 50;
  squareY = height - 50;
  squareSize = 100;
}
