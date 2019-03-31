/***************************************************
* this class just holds values in memory
* and calls the Processing call 'line()'
* to draw the shape.
**************************************************/
class Line {
  int x; int y; int w; int h;
  Line (int x,int y, int w, int h) {
    this.x = x; this.y = y; this.w = w; this.h = h;
  }
  void set(int x, int y, int w, int h) {
    this.x = x; this.y = y; this.w = w; this.h = h;
  }
  void draw() { line(x,y,x+w,y+h); }
}
