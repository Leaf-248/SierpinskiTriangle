public void setup(){
  size(400, 400);
  background(0);

}
public void draw(){
  fill(255);
  noStroke();
  sierpinski(25, 360, 350);
}

public void sierpinski(double x, double y, double len){
  if(len <= 2)
    triangle((float)x, (float)y, (float)(x+len/2), (float)(y-len), (float)(x+len), (float)y);
  
  else{
    fill(0, 0, 255);
    sierpinski(x+len/4-1.25, y-len/2, len/2);
    fill(255, 0, 0);
    sierpinski(x+len/2+1, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
    fill(0);
    sierpinski(x, y, len/2);
  }
}
