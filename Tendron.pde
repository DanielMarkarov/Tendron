public int condition = 0;

public void setup()
{
  size(300, 300);  
  background(0);
  noLoop();
}

public void draw()
{
  background(255);
  Cluster c = new Cluster(10, 150, 150, 1); // initial number of segments in the tendril and starting (x,y) coordinate
}
public void mousePressed()
{
  condition = 0;
  redraw();
}
