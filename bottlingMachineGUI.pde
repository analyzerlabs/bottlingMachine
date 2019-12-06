int h=480,w=800;
knob llenado,botellas;
tank balde;
button ON,OFF;
box p1,p2,p3;
figura f1;
disco proyecto;
void setup() {
     
     //fullScreen();
     size(800,480);
     w=800;
     h=480;
     int Dx = w/80;
     int Dy = h/80;
     frameRate(150);
     background(fondoPrincipal);
     bigLetters = int(h+w)/60;
     smallLetters = int(h+w)/100;
     init = millis();
     proyecto = new disco(4,17);
     int p1_size = 150;
     int a1 = w/20+Dx;
     int b1 = h/20+Dy;
     int a2 = a1+Dx+w/4*p1_size/100;
     int b2 = h/20+Dy;
     int a3 = a2+w/16*p1_size/100;
     int b3 = b2+h/32*p1_size/100;
     int a4 = int(34.5*w/40);
     int b4 = 2*h/9;
     int a5= int(34.5*w/40);
     int b5 = 3*h/9;
     int a6 = w/20+Dx;
     int b6 = h/20+Dy + h/2; 
     ON = new button(a4,b4,100,"INICIO",verde);
     OFF = new button(a5,b5,100,"APAGAR",rojo);
     p1 = new box(a1,b1,p1_size,fondoBox);
     
     p2 = new box(a2,b2,p1_size,fondoBox);
     p3 = new box(a6,b6,p1_size,fondoBox);
     llenado = new knob(w/20+Dx+w/8*p1_size/100,h/20+Dy+h/8*p1_size/100,100,blue,"%"); 
     botellas = new knob(w/20+Dx+w/8*p1_size/100,h/20+Dy+h/8*p1_size/100+h/2,100,morado,"Und.");
     //f1 = new figura("triangulo",a3,b3,100,verdeBrillante);
     balde = new tank(a3,b3,80,verde);
     //loadImages();
      menu();
      botellas.move(0);
}

int init,motor=0,i=0,volumen=0,j=0;
void draw() {
    
    if(millis()-init>=10){
      
       volumen++;
       i++;
       if(i==101){
         i=0;
         j++;
         proyecto.move(1);
         botellas.move(j);
       }
       if(j==101){
         j=0;
         botellas.move(j);
       }
       
       //home(w/10,4*(h/6),1);
       init = millis();
       llenado.move(i);
       if(volumen==14)volumen=0;
       balde.volumen(volumen);
   }
}
