class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -20;
    xCorners[1] = 7;
    yCorners[1] = -20;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -20;
    yCorners[5] = 0;
     myColor = color(65,65,65);
     myCenterX = (int)(Math.random()*500);
     myCenterY = (int)(Math.random()*500);
     myXspeed = (int)(Math.random()*2)+1;
     myYspeed = (int)(Math.random()*2)+1;
     myPointDirection = 0;
     rotSpeed = (Math.random()*6)-3;
  }
  void move(){
   turn(rotSpeed);
   super.move();
  }
}
