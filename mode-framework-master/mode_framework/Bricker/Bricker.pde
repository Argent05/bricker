int randocolor;

// brick variables

int[] x;
int[] y;
int brickd;


// array variables

int n;
int tempx, tempy = 100;

final int INTRO = 1;
final int GAME  = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
int mode = GAME;  //1: intro screen, 2: game playing, 3: gameover screen, 4: pause

//game entities
float bx, by, bd, vx, vy, px, py, pd;

// keyboard variables
boolean akey, dkey;

 int i = 0;
void setup() {
  size(800, 800);

randocolor = color(random(255),random(255),random(255));


  bx= 400;
  by=750;
  bd =13;
  vy = -9;

  px = 400;
  py= 800;
  pd = 90;


  brickd= 10;
  n=50;
  tempx = 100;
  tempy = 100;

 
  while (i < n ) {
    x[i] = tempx;
    y[i] = tempy;
    fill(randocolor);          // if i must do the rows, then the code would probably be if tempy = 200 or osmething, then color change
    tempx = tempx +100;
    if (tempx == width-40) {
      tempx = 100;
      tempy = tempy + 100;
    }

   
    i = i +1;
  }

  x = new int [n];
  y = new int [n];
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
