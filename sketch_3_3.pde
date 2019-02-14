int x;
int y;
int hoogte = 50;
int breedte = 300;
int muisX;
int muisY;


void setup(){
  size(500, 500);
  x =  width/4;
  y = height/4;
}

void draw(){
  fill(#F4FC0D);
  rect(x, y, breedte, hoogte);
  textSize(40);
    fill(#FC0D1D);
    text(muisX + " - " + muisY, x, y + 40);

}

void mouseClicked(){
  if(mouseX%2 == 0 || mouseY%2 == 0){
  muisX = mouseX;
  muisY = mouseY;
  }

}
