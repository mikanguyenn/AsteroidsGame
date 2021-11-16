class Star //note that this class does NOT extend Floater
{
  private double myX, myY;
  private int myColor, mySize;
  public Star(){
    myX = Math.random()*500; 
    myY = Math.random()*500;
    mySize = (int)(Math.random()*6+1);
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256),(int)(Math.random()*256));
  }
  public void show(){
    stroke(0);
    fill(myColor);
    ellipse((float)myX,(float)myY,mySize,mySize);
  }
}
