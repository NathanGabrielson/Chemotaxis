class Food {
  int x;
  int y;
  
    Food () {
      x = (int)(Math.random() * width);
      y = (int)(Math.random() * height);
      fill(225,222,173);
      rect(x,y,20,20);   
  }
  
  
  void show() {
      rect(x,y,20,20);  
  }
   
}
