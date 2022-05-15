void game() {
  background(0, 0, 255);

  //paddle
  fill(white);
  circle(px, py, pd);
  if (akey == true) px = px -5;
  if (dkey == true) px = px +5;

  //ball---------------------------------------
  strokeWeight(0);
  fill(red);
  circle(bx, by, bd);
  bx = bx +vx;
  by = by + vy;

  //bouncing

  if (dist(bx, by, px, py) < bd/2 + pd/2) {
    vx = (bx- px) /10;
    vy = (by - py)/10;
  }

  if (by < bd/2 || by > height - bd/2) {    // bottom wall, turn off later
    vy = vy * -1;
  }

  if ( bx < bd/2 || bx > width -bd/2) {    // bounce of top wall
    vx = vx * -1;
  }

  //brick ------------------------------------------------------------------
  //circle(x[0],y[0],brickd);
  // circle(x[1],y[1],brickd);
  // circle(x[2],y[2],brickd);

  int i = 0;
  while (i < n) {
    circle(x[i], y[i], brickd);
    if (dist(bx, by, x[i], y[i]) < bd/2 + brickd/2) {
      vx = (bx- x[i]) /10;
      vy = (by - y[i])/10;
    }

    i = i+1;
  }



  // pallet restrictions

  if (px < pd/2) {
    px = pd/2;
  }
  if (px > height-pd/2) {
    px = height-pd/2;
  }
}

void gameClicks() {
}
