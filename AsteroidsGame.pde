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
    if(key == 'l'){
      mika.turn(-10);
    }
    if(key == 'r'){
      mika.turn(10);
    }
    if(key == 'a'){
      mika.accelerate(0.4);
    }
    if(key == 'h'){
      mika.hyperspace();
      mika.setSpeed(0);
    }
  }
  mika.move();
  mika.show();
}
