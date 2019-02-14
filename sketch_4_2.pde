void setup(){
  size(600, 500);
  background(0);
}

void tekst(String naam, int positieX,  int positieY){
  fill(255);
  textAlign(CENTER);
  textSize(14);
  text("Hallo " + naam + ", hoe gaat het met jou?", positieX, positieY);
}

void draw(){
  tekst("Harry", width/4, height/4);
  tekst("Marianne", (width/4)*3, height/4);
  tekst("Ludo", width/4,(height/4)*3);
  tekst("Maaike", (width/4)*3, (height/4)*3);
  tekst("Judith", width/2, height/2);
}
