class tank {
  color cbutton;
  int posx, posy;
  int size;
  int dx=w/60;
  int dy=h/60;
  int A[]={0,0}, B[]={0,0}, C[]={0,0}, D[]={0,0}, E[]={0,0}, F[]={0,0}, G[]={0,0}, H[]={0,0};
  int M[]={0,0},N[]={0,0}, P[]={0,0}, Q[]={0,0};
  int x= 0, y =1;
  tank(int x1, int y1, int s, color c) {
    cbutton = c;
    posx = x1;
    posy = y1;
    size = s;
    A[x]=posx;
    A[y]=posy+4*size*dy/100;
    B[x]=posx+4*size*dx/100;
    B[y]=posy;
    C[x]=posx+4*size*dx/100;
    C[y]=posy+4*size*dy/100;
    D[x]=posx+11*size*dx/100;
    D[y]=posy+4*size*dy/100;
    E[x]=posx+11*size*dx/100;
    E[y]=posy;
    F[x]=posx+15*size*dx/100;
    F[y]=posy+4*size*dy/100;
    G[x]=posx;
    G[y]=posy+20*size*dy/100;
    H[x]=posx+15*size*dx/100;
    H[y]=posy+20*size*dy/100;
    
    M[x]=posx+size*dx/100;
    M[y]=posy+5*size*dy/100;
    N[x]=posx+14*size*dx/100;
    N[y]=posy+5*size*dy/100;
    P[x]=posx+1*size*dx/100;
    P[y]=posy+19*size*dy/100;
    Q[x]=posx+14*size*dx/100;
    Q[y]=posy+19*size*dy/100;
    init();
  }

  void init() {

    fill(tankBackground);
    stroke(tankBackground);
    triangle(A[x], A[y], B[x], B[y], C[x], C[y]);
    triangle(D[x], D[y], E[x], E[y], F[x], F[y]);
    rect(B[x], B[y], E[x]-B[x], C[y]-B[y]);
    rect(A[x], A[y], F[x]-A[x], G[y]-A[y]);
    
  }
  
  void volumen(float v){
    if(v>=14)v=14;
    else if(v<=0)v=0;
    fill(blue);
    stroke(blue);
    rect(M[x], M[y], Q[x]-M[x], Q[y]-M[y]);
    fill(tankBackground);
    stroke(tankBackground);
    int I[] = {0,0};
    I[x]= Q[x];
    I[y]= Q[y] - int(v*size*dy/100);
    rect(M[x], M[y], I[x]-M[x], I[y] - M[Y]);
    stroke(white);
    fill(white);
    text(v,(A[x]+F[x])/2,(A[y]+G[y])/2);
  }
  int[] getParams() {
    int[] p = {posx, posy, dx, dy, size};
    return(p);
  }
}
