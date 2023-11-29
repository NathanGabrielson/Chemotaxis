class Bacteria {
  float x;
  float y;
  int r, g, b;
  float size;

  Bacteria() {
    x = (int)(Math.random() * width);
    y = (int)(Math.random() * height);
    r = (int)(Math.random() * 255);
    g = (int)(Math.random() * 255);
    b = (int)(Math.random() * 255);
    size = 10;
    show();
  }

  void move(int foodX, int foodY) {
    float xDiff = foodX - x;
    float yDiff = foodY - y;
    float yBias = 0;
    float xBias = 0;
    if (xDiff != 0) {
      xBias = (xDiff/Math.abs(xDiff))/16;
    }
    if (yDiff != 0) {
     yBias = (yDiff/Math.abs(yDiff))/16;
    }
    x += (Math.random() - 0.5) + xBias;
    y += (Math.random() - 0.5) + yBias;
    size -= (Math.random() - 0.2) * 0.05;
    
    if (size <= 0) {
      x = (int)(Math.random() * width);
      y = (int)(Math.random() * height);
      size = 10;
    }
  }

  void show() {
    fill(r, g, b);
    ellipse(x, y, size, size);
  }

 
}
