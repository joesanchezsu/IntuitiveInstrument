import themidibus.*;
import processing.sound.*;

MidiBus myBus; 
Note NoteTest;
int x;
int y;

void setup()
{
  background(0);
  size(600, 600);
  MidiBus.list();
  myBus = new MidiBus(this, -1, "VMPK Input");
  
}

void draw()
{
  x = mouseX;
  y = mouseY;
  float d = dist(width/2, height/2, mouseX, mouseY);
  background(0);
  stroke(255);
  fill(70,50,30);
  ellipse(width/2, height/2, d*2, d*2);
  int dint = (int)d;
  
  myBus.sendNoteOn(0, dint/15, 127);
  
}