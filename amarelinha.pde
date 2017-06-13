import processing.serial.*;
import ddf.minim.*;

Minim minim;
AudioPlayer player;
AudioInput input;

Serial port;





boolean play = false;
boolean playcena = false;
boolean check = false;
void setup() {
  //PORTA sERIAL 
   port = new Serial(this,"COM7", 9600);
  size(1366,786);
 
  frameRate(100);
  minim = new Minim(this);


}

void draw() {

  
  while(port.available() > 1){
    println((char)port.read());
  }
    
  if((char)port.read() == '1'){
      player.play();
      playcena = true;
  }if((char)port.read() == '0'){ 
      player.pause();
  }  
  
}






