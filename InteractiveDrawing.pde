/*****************************************************
******************************************************
******************************************************
* Main Program
******************************************************
******************************************************
*****************************************************/

/******************************************************
* initialize all the variables
******************************************************/

final int _RECTANGLE = 82;
final int _ELLIPSE = 69;
final int _LINE = 76;

final int X = 88;
final int Y = 89;
final int W = 87;
final int H = 72;

int x = 100;
int y = 100;
int w = 100;
int h = 100;

Ellipse e = new Ellipse(x,y,w,h);
Rectangle r = new Rectangle(x,y,w,h);
Line l = new Line(x,y,w,h);

int step = 1;
int prevMs = millis();

int shape = 0;
int dimen = 0;
int direc = 0;

/******************************************************
* this function selects what shape, what dimension,
* and whether to increase or decrease the dimension.
******************************************************/

void keyPressed() {

  //------------------------------------
  // are we increasing or decreasing value
  //------------------------------------
  if (key==CODED) {
    if (keyCode==UP) {
      println("UP");
      direc = keyCode;
    } else if (keyCode==DOWN) {
      println("DOWN");
      direc = keyCode;
    }

  //------------------------------------
  // which shape do we want to select to change
  //------------------------------------
  } else if (keyCode==82) {
      println("rect");
      shape = _RECTANGLE;
      x = r.x; y = r.y; w = r.w; h = r.h;
  } else if (keyCode==69) {
      println("ellipse");
      shape = _ELLIPSE;
      x = e.x; y = e.y; w = e.w; h = e.h;
  } else if (keyCode==76) {
      println("line");
      shape = _LINE;
      x = l.x; y = l.y; w = l.w; h = l.h;


  //------------------------------------
  // which dimension do we wish to change
  //------------------------------------
  } else if (keyCode==88) {
      println("x");
      dimen = X;
  } else if (keyCode==89) {
      println("y");
      dimen = Y;
  } else if (keyCode==87) {
      println("w");
      dimen = W;
  } else if (keyCode==72) {
      println("h");
      dimen = H;
  } else {
    println("key code " + keyCode);
  }
  
  adjust();
  
}

/******************************************************
* this function increases or decreases
* how much the shapes will change for
* each keypress.
* (it appears to simulate acceleration/deceleration
******************************************************/
void adjustHowMuchMovement() {

  int now = millis();
  if ((now - prevMs) < 200) {
    step++;
  } else if ((now - prevMs) > 500) {
    step = 1;
  } else if (step>1) {
    step--;
  }
  prevMs = now;
  
}



/******************************************************
* this function sets the new x,y,w,h values for
* the selected shape
******************************************************/
void adjust() {

  adjustHowMuchMovement();

  
  switch (direc) {
    case UP:
      switch(dimen) {
        case X: x+=step;break;
        case Y: y+=step;break;
        case W: w+=step;break;
        case H: h+=step;break;
    	default:
      	println("\nNo X / Y / W / H selected");
      }
      break;
    case DOWN:
      switch(dimen) {
        case X: x-=step;break;
        case Y: y-=step;break;
        case W: w-=step;break;
        case H: h-=step;break;
    	default:
      	println("\nNo X / Y / W / H selected");
      }
      break;
    default:
      println("\nNo UP / DOWN selected");
  }

  switch(shape) {
    case _RECTANGLE:
        r.set(x,y,w,h);
        break;
    case _ELLIPSE:
        e.set(x,y,w,h);
        break;
    case _LINE:
        l.set(x,y,w,h);
        break;
    default:
      println("\nNo RECTANGLE / ELLIPSE selected");
  }
  
  redraw();
}

void setup() {
  size(700,700); //size of drawing window or canvas
  background(0);
  stroke(0);
}

void draw() {
  background(0);
  stroke(0);
  r.draw();
  e.draw();
  stroke(100);
  l.draw();
}

void mousePressed() {
  println("mouse");
}
