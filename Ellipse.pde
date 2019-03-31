/***************************************************
* this class just holds values in memory
* and calls the Processing call 'ellipse()'
* to draw the shape.
**************************************************/
class Ellipse {
  int x; int y; int w; int h;
  Ellipse (int x,int y, int w, int h) {
    this.x = x; this.y = y; this.w = w; this.h = h;
  }
  void set(int x, int y, int w, int h) {
    this.x = x; this.y = y; this.w = w; this.h = h;
  }
  void draw() { ellipse(x,y,w,h); }
}
