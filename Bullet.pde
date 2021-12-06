class Bullet extends Floater{
  public Bullet(){
    myCenterX = mika.getX();
    myCenterY = mika.getY();
    myXspeed = mika.getX();
    myYspeed = mika.getY();
    myPointDirection = mika.getPD();
  }
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
}
