class Brick {

  int lengthBlock;     // Length of shape
  int widthBlock = width;    // Width of the shape

  float xpos, ypos;
  
  float yspeed = 2.2;  // Speed of the shape


  int ydirection;  // Top to Bottom

  int rColor = 200;
  int bColor = 0;
  int value;
  
  
  Brick(int tempD, int tempYpos, int tempYdir, float tempYspeed, int tempValue){
  xpos = width/2;

  lengthBlock = tempD;
  ypos = tempYpos;    // Starting position of shape
  ydirection = tempYdir;
  yspeed = tempYspeed;
  value = tempValue;



}





  // Draw the shape
  void display() {

    fill(rColor, 0, bColor, value);
    rectMode(CENTER);
    rect(xpos, ypos, widthBlock, lengthBlock);

    widthBlock = mouseX;
    lengthBlock = mouseY;
  }



  void ascend() {

    ypos = ypos + ( yspeed * ydirection );

    if (ypos > height || ypos < -60) {
      ydirection *= -1;
    }
  }


  void changeColor() {
    rColor += 10/3%5 ;
    bColor += 20;

    if (rColor > 255) {
      rColor = 100;
    }

    if (bColor > 255) {
      bColor = 100;
    }
  }

  void changeTransp() {
    value = value + 1;
    println(value);
    if (value > 50) {
      value = 0;
    }
  }
}