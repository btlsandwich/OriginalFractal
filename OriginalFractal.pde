public void setup() {
  size(1000,1000);
}
public void draw() {
  frameRate(20);
  background(0);
  //fill(0, 10);
  //rect(0, 0, width, height);
  myFractal(50,50,1000);
}
public void myFractal(int x, int y, int siz) {
  fill(0);
  stroke((int)(Math.random()*150), 0, 150);
  triangle(x+siz/2, y-siz, x, y, x+siz, y);
  if (siz > 20)
  {
    myFractal(x-siz/2, y, siz/2);
    myFractal(x+siz/2, y, siz/2);
    myFractal(x, y-siz/2, siz/2);
    myFractal(x, y+siz/2, siz/2);
  }
}
public void myWall(int x, int y, int siz) {
  rect(x+siz/2, y+siz/2, siz, siz);
}
