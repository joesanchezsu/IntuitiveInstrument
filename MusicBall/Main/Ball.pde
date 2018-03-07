class Ball {

  int x = 0;
  int y = 0;
  float col1 = 150;
  float col2 = 100;
  float col3 = 20;
  float speedX = random(-200, 200);
  float speedY = random(-50, 50);
  int speed = abs(mouseX-pmouseX) + abs(mouseY-pmouseY);
  int delay_ = 200 - (speed/5); 
  
  Ball(int _x, int _y){
   
    x = _x;
    y = _y;
  }
  
  void run(){
    displayBall();
    moveBall();
    checkEdges();
    sound(x, y);
    println(x);
  }
  
  void displayBall()
  {
    float couleur1 = random(0, 255);
    float couleur2 = random(0, 255);
    float couleur3 = random(0, 255);
    float taille = random(0, 3);
    float taille2 = random(0, 3);
    stroke(255);
    col1--;
    col2--;
    col3++;
    //fill(col1, col2, col3);
    fill(couleur1, couleur2, couleur3);
    ellipse(x, y, 20*taille, 20*taille);
    if(col1 == 0){
      col1 = 255;
    }
    if (col2 == 0){
      col2 = 255;
    }
    if(col3 == 255){
      col3 = 0;
    }
  }
  
  void moveBall()
  {
    x += speedX;
    y += speedY;
  }

  void checkEdges()
  {
    if (x > width || x < 0) {
      speedX *= -1;
      myBus.sendNoteOn(0, 70, 127);
    }
    if (y > height || y < 0) {
      speedY *= -1;
      myBus.sendNoteOn(0, 70, 127);
    }
    
    //speedY += 1.5; // gravity
  }
  
  void sound(int x, int y)
  {
    myBus.sendNoteOn(0, (x+y)/15, 127);
  }
}