void gameover() {
  gameover.play();
  background(255,0,0);
fill(white);  
text("GAMEOVER",width/2,300);

textSize(40);
fill (random(234,255),random(255),random(255));
text("Click to Resume", width/2,600);
}

void gameOverClicks() {
  mode = INTRO;
  gameover.rewind();
  lives = 3;
  score =0;
  n = 28;
}
