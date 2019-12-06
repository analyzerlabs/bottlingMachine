class button {
  color cbutton;
  color cBorder;
  String name;
  int posx, posy;
  int size;
  int dx=w/10;
  int dy=h/15;
  button(int x, int y, int s, String n, color c) {
    cbutton = c;
    posx = x;
    posy = y;
    size = s;
    name = n;
    init();
  }

  void init() {
    fill(cbutton);
    stroke(cBorder);
    rect(posx, posy, size*dx/100, size*dy/100, 10);
    fill(black);
    stroke(black);
    textSize(12);
    textAlign(CENTER, CENTER);
    text(name, posx+size*dx/200, posy+size*dy/200);
  }

  void update() {
    init();
  }
  int[] getParams() {
    int[] p = {posx, posy, dx, dy, size};
    return(p);
  }
}


void mousePressed() {
  if (overbutton(ON.getParams())) {
    i = 0;
    ON.cBorder = black; 
    ON.cbutton = verdeOscuro;
    ON.update();
  }
  if (overbutton(OFF.getParams())) {
    i = 0;
    OFF.cBorder = black; 
    OFF.cbutton = rojoOscuro;
    OFF.update();
  }
}

void mouseReleased() {
  if (overbutton(ON.getParams())) {
    i = 0;
    ON.cBorder = white; 
    ON.cbutton = verde;
    ON.update();
  }
  if (overbutton(OFF.getParams())) {
    i = 0;
    OFF.cBorder = white; 
    OFF.cbutton = rojo;
    OFF.update();
  }
}
boolean overbutton(int[] p) {
  int posx=0, posy=1, dx=2, dy=3, size=4;
  if (mouseX > p[posx] && mouseX < p[posx]+ p[dx]*p[size]/100 && mouseY > p[posy] && mouseY < p[posy]+ p[dy]*p[size]/100  ) {
    return true;
  } else {
    return false;
  }
}
