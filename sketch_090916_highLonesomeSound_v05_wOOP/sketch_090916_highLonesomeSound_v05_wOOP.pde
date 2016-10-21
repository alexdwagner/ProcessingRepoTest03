Brick b1;
Brick b2;


void setup() 
{
  size(1280, 720);
  //fullScreen();
  noStroke();
  frameRate(30);
  
  background(#FFFFFF);

/* Brick constructor has 5 args: 
  int tempD,         =   height of rect
  int tempYpos,      =   starting position of rect   
  int tempYdir,      =   direction of rect, up or down(1 or -1?)
  float tempYspeed,  =   float of yspeed. a decent speed is between 2.0-3.0
  int tempValue      =   starting transparency value of rect's fill. can be changed with mouseDragged
*/

  b1 = new Brick(30, 300, -1, 2.5, 50);
  b2 = new Brick(60, 600, 1, 1.5, 100);
}


void draw() 
{
  //background(#FFFFFF);
  b1.ascend();
  b1.display();
  //b.top();
  
  b2.ascend();
  b2.display();
  
  //b3.ascend();
  //b3.display();
  
//saveFrame("frames/####.png");
}

void mousePressed(){
  b1.changeColor();
}

void mouseDragged(){
 b2.changeTransp(); 
}

/* functions to possibly add:

add/subtract Blocks with plus or minus
  up to 10 blocks, so you can cycle through each w num keys

pause draw function
adjust framerate - arrow keys
move shape left or right with arrow keys
  

cycle through shapes: circle, triangle, star, Pshape... 3D shapes even, STLs/OBJs even
  load preselected svg from folder
  
it would be cool is you could type a word or maybe however many characters and hit enter to print the word. 
and you could keep hitting enter to keep printing it, using mouseX and mouseY to resize the text. 
   - you would use delete to delete the text. you'd also be able to toggle transparency as well as direction/orientation/translation of text


*/