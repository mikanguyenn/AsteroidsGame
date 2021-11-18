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
  background(0);
  for(int i  = 0; i < mo.length; i++){
    mo[i].show();
  }
  if(keyPressed){
    if(key == 't' || key == 'T'){
    mika.turn(-10);
    }
    if(key == 'a' || key == 'A'){
      mika.accelerate(0.4);
    }
    if(key == 'h' || key == 'H'){
      mika.hyperspace();
      mika.setXspeed(0);
    }
  }
  mika.move();
  mika.show();
}
