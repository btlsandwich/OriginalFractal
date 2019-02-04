public void setup() {
  size(1000,1000);
}
public void draw() {
  background(0);
  myFractal(250,250,600);
}
public void myFractal(int x, int y, int siz) {
  ellipse(x, y, siz, siz);
  if (siz > 20)
  {
    myFractal(x-siz/2, y, siz/2);
    myFractal(x+siz/2, y, siz/2);
    myFractal(x, y-siz/2, siz/2);
    myFractal(x, y+siz/2, siz/2);
  }
}
