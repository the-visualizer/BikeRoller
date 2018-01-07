/*          BikeRoller
            ----------
       Created by: Visualizer    */
Elements a;
void setup()
{
  size(500,257);
  a = new Elements();
}  
void draw()
{
  clear();
  background(92,170,130);      //creates a greenish-bluish coloured background 
  a.backdrop(controls());
  a.biker(width, height, controls());
}
int controls()
{  int d=1;
   if (key == CODED) 
   {
     if (keyCode == LEFT)   d=-1;  //move the world right to left
     if (keyCode == RIGHT)  d=1;   //move the world left to right
   }
   return d;
}