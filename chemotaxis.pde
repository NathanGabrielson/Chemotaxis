Bacteria[] bacterias;
Food target;

void setup() {
  size(1000,800);
  bacterias = new Bacteria[50];
  target = new Food();
  
  for (int i = 0; i < bacterias.length; i++) {
    bacterias[i] = new Bacteria(); 
  } 
}

void draw() {
   background(0);
   target.show();
   for (int i = 0; i < bacterias.length; i++) {
     bacterias[i].move(target.x,target.y);
     bacterias[i].show();
  }
}


void mouseClicked() {
  target.x = mouseX;
  target.y = mouseY;
}
