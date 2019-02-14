
void setup(){
  size(500, 400);
  background(0);
}

void drukaf(float getal){  
  println("Getal: "+ getal);
  println("Int: " + (int) getal);
  println("Round: " + round(getal));
  println("Floor: " + floor(getal));
  println("Ceil: " + ceil(getal));
}

void draw(){
  drukaf(7.56);
  drukaf(-7.65);
  drukaf(7.498);
  drukaf(-7.498);
  drukaf(3.01);
  drukaf(-3.01);
  drukaf(4.999);
  drukaf(-4.99);
}
