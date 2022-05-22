void game() {
  background(0, 0, 255);

//text + scoring and lives
  text("score: " +score, width/4-50,770);
  text("lives: " +lives, width*0.80,770);
  

if (lives < 1) {
  mode = GAMEOVER;
  //sound
}


  //paddle
  fill(white);
  circle(px, py, pd);
  if (akey == true) px = px -5;
  if (dkey == true) px = px +5;

  //ball---------------------------------------
  strokeWeight(0);
  fill(random(255),random(255),random(255));
  circle(bx, by, bd);
  bx = bx +vx;
  by = by + vy;

  //bouncing

  if (dist(bx, by, px, py) < bd/2 + pd/2) {
    vx = (bx- px) /10;
    vy = (by - py)/10;
  }

  if (by < bd/2 || by > height - bd/2) {    // bottom wall, turn off later
    lives = lives -1;
    bx= 400;
    by=750;
  }

  if ( bx < bd/2 || bx > width -bd/2) {    // bounce of top wall
    vx = vx * -1;
  }

  //brick old ------------------------------------------------------------------
  //circle(x[0],y[0],brickd);
  // circle(x[1],y[1],brickd);
  // circle(x[2],y[2],brickd);

  int i = 0;
  while (i < n) {
    if ( alive[i] ==true) {
    manageBrick(i);
    }
    i = i+1;
  }

//paddle
   
   fill(white);
   circle(px,py,pd);

  // pallet restrictions

  if (px < pd/2) {
    px = pd/2;
  }
  if (px > height-pd/2) {
    px = height-pd/2;
  }
}




void gameClicks() {
  mode = PAUSE;
}



void manageBrick(int i){  // have to initalize i here
  if (y[i] == 100) fill(orange);
    if(y[i] == 200) fill(darkblue);
    if (y[i] == 300) fill(yellow);
    if (y[i] == 400) fill(white);
    circle(x[i], y[i], brickd);
    if (dist(bx, by, x[i], y[i]) < bd/2 + brickd/2) {
      vx = (bx- x[i]) /10;
      vy = (by - y[i])/10;
      alive[i] = false;
      score = score +100;
      bump.play();
      bump.rewind();
    } 
  
}
