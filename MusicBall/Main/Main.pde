import themidibus.*;
import processing.sound.*;

MidiBus myBus; 
Note NoteTest;
Ball ball1;

void setup()
{
  background(0);
  size(600, 600);
  MidiBus.list();
  myBus = new MidiBus(this, -1, "VMPK Input");
  ball1 = new Ball(200, 200);
}

void draw()
{
  ball1.run();
  //if (mouseX > 200){
  // myBus.sendNoteOn(0, 70, 127);
  //}
}