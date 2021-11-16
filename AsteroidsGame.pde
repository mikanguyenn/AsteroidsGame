Spaceship mika = new Spaceship();
Star mo[];

public void setup(){
  size(500,500);
  background(0);
  mo = new Star[200];
  for(int i = 0; i < mo.length; i++){
    mo[i] = new Star();
  }
}
public void draw(){
  for(int i  = 0; i < mo.length; i++){
    mo[i].show();
  }
}
