import processing.io.*;

class disco{
    int stepPin=4,dirPin=17;
    int posx,posy;
    int size;
    int dx=w/20;
    disco(int s, int d){
        dirPin = d;
        stepPin= s;
        init();
    }
    
    void init(){
        GPIO.pinMode(dirPin, GPIO.OUTPUT);
        GPIO.pinMode(stepPin, GPIO.OUTPUT);
    }
    void move(int direccion){
        if(direccion == 1)GPIO.digitalWrite(dirPin, GPIO.HIGH);
        else if(direccion == 0)GPIO.digitalWrite(dirPin, GPIO.LOW);
        for(int i=0 ;i<28;i++){
          GPIO.digitalWrite(stepPin, GPIO.HIGH);
          delay(20);
          GPIO.digitalWrite(stepPin, GPIO.LOW);
          delay(20);
        }
    }
}
