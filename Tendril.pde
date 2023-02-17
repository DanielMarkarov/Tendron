public class Tendril
{
  public final static int SEG_LENGTH = 6; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  private float color1 = (float)Math.random()*255-40;
  private int valoo;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y, int value)
  {
    myX = x;
    myY = y;
    myAngle = theta;
    myNumSegments = len;
    valoo = value;
    show();
  }
  public void show()
  {
    noStroke();
    fill(#FA1919);
    ellipse(myX, myY, 5, 5);
    double startX = myX;
    double startY = myY;
    double endX;
    double endY;
    double randomness = Math.random()*0.6+0.8;
    for(int i = 0; i < myNumSegments; i++)
    {
      strokeWeight(valoo*2);
      stroke(color1 - 20, color1, color1 -10);
      myAngle += Math.random()*0.4*randomness-0.4;
      randomness+= 0.01;
      endX = startX + Math.cos(myAngle)*SEG_LENGTH;
      endY = startY + Math.sin(myAngle)*SEG_LENGTH;
      line((float)startX, (float)startY, (float)endX, (float)endY);
      startX = endX;
      startY = endY;
      
      if(i == myNumSegments-1)
      {
      //  condition++;
        Cluster k = new Cluster(myNumSegments/2, (int)endX, (int)endY, valoo++);
      }
    }
  }
}
