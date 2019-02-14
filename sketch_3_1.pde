int m;

void setup(){
  size(500,300);
  m= 0;
}

void draw(){
  textSize(20);
  m = m + second();
  text("Verstreken seconden: " + m, 100,100);
}
