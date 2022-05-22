import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



// brick variables

int[] x;
int[] y;
int brickd;  
boolean[] alive;


// array variables

int n;
int tempx, tempy = 100;

//other variables
int lives;
int score;
PFont thefont;
float counter;
float textS;

final int INTRO = 1;
final int GAME  = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
int mode = INTRO;  //1: intro screen, 2: game playing, 3: gameover screen, 4: pause

//game entities
float bx, by, bd, vx, vy, px, py, pd;

// keyboard variables
boolean akey, dkey;


// sound variables
Minim minim;
AudioPlayer intro, scoree, bump, gameover;



 int i = 0;
void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);
  thefont = createFont("walkthemoon.ttf", 128);
  textS = 20;

 //minim
  minim = new Minim(this);
   bump  = minim.loadFile("bump.wav");
   scoree = minim.loadFile("goal.mp3");
   
   gameover = minim.loadFile("intro.mp3");
   intro = minim.loadFile("dramatic.mp3");


  bx= 400;
  by=750;
  bd =19;
  vy = 20;

  px = 400;
  py= 800;
  pd = 90;


  brickd= 14;
  n=28;
  alive = new boolean[n];
  tempx = 100;
  tempy = 100;
  
  
  lives = 3;
  score = 0;
 

x = new int [n];
  y = new int [n]; 
  while (i < n ) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;         
    tempx = tempx +100;
 
    if (tempx > width-20) {
      tempx = 100;
      tempy = tempy + 100;
    }

   
    i = i +1;
  }

  
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
