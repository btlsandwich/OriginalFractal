public void setup() {
  size(800,800);
}
public void draw() {
  frameRate(100);
  background(0);
  panic();
  myFractal(150,650,500);
  disco();
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
public void disco()
{
  //center
  triangle(370,462,430,462,400,525);
  //first sphere
  ellipse(400,150,70,30);
  ellipse(400,150,30,30);
  fill((int)(Math.random()*150), 0, 150);
  ellipse(400,150,10,10);
  fill(0);
  //second sphere
  ellipse(150,650,25,25);
  triangle(145,630,150,610,155,630);
  triangle(145,670,150,690,155,670);
  triangle(110,650,130,655,130,645);
  triangle(190,650,170,655,170,645);
  triangle(160,635,179,625,165,641);
  triangle(140,635,121,625,135,641);
  triangle(160,665,179,675,165,659);
  triangle(140,665,121,675,135,659);
  //third sphere
  ellipse(650,650,30,30);
  arc(650,635,60,85,0,HALF_PI+QUARTER_PI,OPEN);
  arc(646,628,67,85,0,HALF_PI+QUARTER_PI,OPEN);
}
