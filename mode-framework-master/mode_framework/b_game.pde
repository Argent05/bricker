void game() {
  background(0,0,255);
  
  //paddle
  fill(white);
  circle(px,py,pd);
  if (akey) px = py -5;
  if (dkey) px = py +5;
  
  //ball---------------------------------------
  fill(white);     // draw balls
  circle(bx,by,bd);
  bx = bx + vx;
  by= by + vy;
  
  //bouncing
  
  if (dist(bx,by,px,py)
  
}

void gameClicks() {
  
}
