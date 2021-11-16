Spaceship mika = new Spaceship();
Star[] mo = new Star[200];

public void setup(){
  size(500,500);
  background(0);
  for(int i = 0; i < mo.length; i++){
    mo[i] = new Star();
  }
}
public void draw(){
   mika.show();
  for(int i  = 0; i < mo.length; i++){
    mo[i].show();
  }
}
