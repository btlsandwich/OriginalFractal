public void setup() {
  size(800,800);
}
public void draw() {
  frameRate(100);
  background(0);
  panic();
  myFractal(150,650,500);
  triangle(370,462,430,462,400,525);
}
public void myFractal(float x, float y, float siz) {
  fill(0);
  stroke((int)(Math.random()*150), 0, 150);
  triangle(x+siz/2, y-siz, x, y, x+siz, y);
  ellipse(x, y, siz/4, siz/4);
  ellipse(x+siz, y, siz/4, siz/4);
  ellipse(x+siz/2, y-siz, siz/4, siz/4);
  line(x, y, x+siz/2, y-siz/3);
  line(x+siz/2, y-siz, x+siz/2, y-siz/3);
  line(x+siz, y, x+siz/2, y-siz/3);
  if (siz > 20)
  {
    myFractal(x+siz/2.66, y, siz/4);
    myFractal(x+siz/5.33,y-siz/2.66,siz/4);
    myFractal(x+siz/1.78, y-siz/2.66,siz/4);
  }
}
public void panic()
{
  fill(0);
  stroke((int)(Math.random()*150), 0, 150);
  ellipse(400,470,500,500);
}
