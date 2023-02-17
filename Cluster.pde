

public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y, int value)
    {
        Tendril tendie1 = new Tendril(len, 0, x, y, value);
        Tendril tendie2 = new Tendril(len, PI/2, x, y, value);
        Tendril tendie3 = new Tendril(len, 3*PI/2, x, y, value);
        Tendril tendie4 = new Tendril(len, PI, x, y, value);
        //Tendril tendie5 = new Tendril(len, 0, x, y);
        //Tendril tendie6 = new Tendril(len, 0, x, y);
        //Tendril tendie7 = new Tendril(len, 0, x, y);
    }
}
