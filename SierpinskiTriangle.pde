int limit = 30;
public void setup(){
  size(500,500);
}

public void draw(){
  background(203,0,31);
  sierpinski(50, 450, 400);
}

public void keyPressed(){
  if(keyCode == UP && limit > 1){
    limit /= 2;
  }
  if(keyCode == DOWN && limit < 395){
    limit *= 2;
  }
}

public void sierpinski(float x, float y, float len){
  if(len <= limit){
  }else{
    fill(18,255,241);
    triangle(x, y, x + len, y, x + len/2, y - len);
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
