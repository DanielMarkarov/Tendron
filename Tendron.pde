public int condition = 0;

public void setup()
{
  size(500, 500);  
  background(0);
  noLoop();
}

public void draw()
{
  background(255);
  Cluster c = new Cluster(10, 250, 250, 1); // initial number of segments in the tendril and starting (x,y) coordinate
}
public void mousePressed()
{
  condition = 0;
  redraw();
}
