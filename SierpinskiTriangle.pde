public void setup(){
  size(400, 400);
  background(0);

}
public void draw(){
  fill(255);
  noStroke();
  sierpinski(100, 200, 200);
}
public void mouseDragged()//optional
{

}

public void sierpinski(double x, double y, double len){
  if(len <= 2)
    triangle((float)x, (float)y, (float)(x+len/2), (float)(y-len), (float)(x+len), (float)y);
  
  else{
    sierpinski(x, y, len/2);
    fill(255, 0, 0);
    sierpinski(x+len/2, y, len/2);
    fill(0, 255, 0);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
