// brick variables

int[] x;
int[] y;
int brickd;


// array variables

int n;


final int INTRO = 1;
final int GAME  = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
int mode = GAME;  //1: intro screen, 2: game playing, 3: gameover screen, 4: pause

//game entities
float bx,by,bd,vx,vy,px,py,pd;

// keyboard variables
boolean akey, dkey;


void setup() {
  brickd= 30;
  n=4;
  x = new int [n];
  y = new int [n];
 
  x[0] =100;
  y[0] = 100;
  
  x[1]= 400;
  y[1] = 100;
  
  x[2] = 700;
  y[2] = 100;
  
  x[3] = 100;
  y[3] = 200;
  size(800, 800);

}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == PAUSE) {  
    pause();
  } else {
    println("?");
  }
}
