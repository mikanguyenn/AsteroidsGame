Spaceship mika = new Spaceship();
Star[] mo = new Star[200];
ArrayList <Asteroid> a = new ArrayList <Asteroid>();
ArrayList <Bullet> b = new ArrayList <Bullet>();

public void setup(){
  size(500,500);
  background(0);
  for(int i = 0; i < mo.length; i++){
    mo[i] = new Star();
  }
  for(int i = 0; i < 15; i++){
    a.add(new Asteroid());
  }
}
public void draw(){
  background(0);
  for(int i  = 0; i < mo.length; i++){
    mo[i].show();
  }
  for(int i = 0; i < a.size(); i++){
    a.get(i).move();
    a.get(i).show();
    float d = dist((float)mika.getX(),(float)mika.getY(),(float)a.get(i).getX(),(float)a.get(i).getY());
    if(d < 20)
      a.remove(i);
  }
  
  if (keyPressed){
    if(key == 'l'){
      mika.turn(-10);
    }
    else if(key == 'r'){
      mika.turn(10);
    }
    else if(key == 'a'){
      mika.accelerate(0.4);
    }
    else if(key == 'h'){
      mika.hyperspace();
      mika.setSpeed(0);
    }
  }
  mika.move();
  mika.show();
}
