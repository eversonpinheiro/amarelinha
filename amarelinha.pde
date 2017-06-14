import processing.serial.*;
import ddf.minim.*;
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;


Minim minim;
AudioPlayer Do, Re, Mi, Fa, Sol, La, Si;

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
  Do = minim.loadFile("Do.wav");
  Re = minim.loadFile("Re.wav");
  Mi = minim.loadFile("Mi.wav");
  Fa = minim.loadFile("Fa.wav");
  Sol = minim.loadFile("Sol.wav");
  La = minim.loadFile("La.wav");
  Si = minim.loadFile("Si.wav");


}

void draw() {

  
  while(port.available() > 1){
    println((char)port.read());
  }
    
  if((char)port.read() == '1'){
    Do.play();
    Do = minim.loadFile("Do.wav");
      
  }if((char)port.read() == '0'){ 
    Re.play();
    Re = minim.loadFile("Re.wav");
  }  
  
}