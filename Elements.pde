/* This code snippet comprises of a class named Elements. 
   It is used to house all the background elements, 
   along with the main character - the biker. */
class Elements
{
  int x,y,x1,x2,x3;
  PImage biker, road, sky, river;
  Elements()             //constructor to load up all the background elements
  {
    road  = loadImage("Images/Boulevard.png");
    sky   = loadImage("Images/Clouds.png");
    river = loadImage("Images/River.png");
  }
  void backdrop(int dir)
   /* This function renders the backdrop. 
      Notice that 3 copies of the same PImage element are being invoked here,
      in order to stitch together each element seamlessly on the screen - 
      whether the left or the right arrow key is pressed. */
  {
    image(river, x3, 0);              //rendering the river
    image(river, x3 + river.width, 0);
    image(river, x3 - river.width, 0);       
    image(sky, x1, 0);                //rendering the sky
    image(sky, x1 + sky.width, 0);
    image(sky, x1 - sky.width, 0);
    image(road, x2, 0);               //rendering the road
    image(road, x2 + road.width, 0);
    image(road, x2 - road.width, 0);     
    
    /* In the following 3 lines, the backdrop elements are being separately 
    incremented, in order to create the illusion of movement. */
    x1 = x1 - dir*1; 
    x2 = x2 - dir*2; 
    x3 = x3 - dir*5;
    
    if(dir==1){ if (x1<-sky.width)   x1=0;
                if (x2<-road.width)  x2=0;
                if (x3<-river.width) x3=0;
              }
    else      { if (x1>sky.width)   x1=0;
                if (x2>road.width)  x2=0;
                if (x3>river.width) x3=0;
              } 
    print(x1,"\t",x2,"\t",x3,"\n");    
  }
  void biker(int x, int y, int dir) 
  /* This function overlays the biker on top of the moving background.
     Similar in its working to the previous function, it changes the biker
     image loaded, depending upon the key pressed.*/
  {    
    if (dir==1)  biker=loadImage("Images/Biker1.png");
    else         biker=loadImage("Images/Biker2.png");
    image(biker, x/2, y/2);
  }
}