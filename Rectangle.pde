/***************************************************
* this class just holds values in memory
* and calls the Processing call 'rect()'
* to draw the shape.
**************************************************/
class Rectangle {
  int x; int y; int w; int h;
  Rectangle (int x,int y, int w, int h) {
    this.x = x; this.y = y; this.w = w; this.h = h;
  }
  void set(int x, int y, int w, int h) {
    this.x = x; this.y = y; this.w = w; this.h = h;
  }
  void draw() { rect(x,y,w,h); }
}
