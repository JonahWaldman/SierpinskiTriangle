public void setup() {
  size(500, 500);
  rectMode(CENTER);
  //noLoop();
  background(#3B00BC);
}
public void draw() {
  sierpinski(100, 350, 300);
}
public void sierpinski(float x, float y, float len) {
  if (mousePressed==true)
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  if (keyPressed==true)
  x+=(Math.random()*6-3);
    if (len<=20) 
    triangle(x, y, x+len, y, x+len/2, y-len);
  else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
