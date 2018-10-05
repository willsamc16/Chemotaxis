 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	//lots of java!   
 }    
 
 Walker[] bob;
boolean alive = true;
float x;
float y;
float easing = 0.05;

void setup()
{
  size(500, 500);
   
  bob = new Walker[1000];
  for (int i=0; i < bob.length; i++)
  
    bob[i] = new Walker();
    frameRate(50);


}
void draw()
{
  background(0);
       //if (alive = true)
      //if(get(mouseX,mouseY) != color (0,0,0))
     // alive = false;
   //if (get(mouseX, mouseY) != color(0))
     for (int i = 0; i < bob.length; i ++)
  {
    bob[i].show();
    bob[i].walk();
   
  }
}
class Walker
{
  int myX, myY, myColor, mySize;
  Walker()
  {
    myX = myY = 250;
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255),60);
    mySize = (int)(Math.random()*20)+10;
  }
  void walk()
  {
     
    myX = myX + (int)(Math.random()*7)-3; //{-3,-2,-1,0,1,2,3}
    myY = myY + (int)(Math.random()*7)-3;
    
  }
  void show()
  {
    if(alive == true)
        fill(myColor);
    ellipse(myX, myY, mySize, mySize);
  if(get(mouseX,mouseY) != color(0,0,0))
  alive = false;
       
   // ellipse(myX-1000,myY-1000, mySize, mySize);
   // ellipse(myX+10, myY+10, mySize, mySize);
   // ellipse(myX+20, myY+20, mySize, mySize);
 
  }

}
