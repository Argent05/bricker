void game() {
  background(0,0,255);
  
  //paddle
  fill(white);
  circle(px,py,pd);
  if (akey) px = py -5;
  if (dkey) px = py +5;
  
  //ball---------------------------------------
strokeWeight(0);  
fill(white);
circle(bx,by,bd);
bx = bx +vx;
by = by + vy;

//bouncing

if (dist(bx,by,px,py) < bd/2 + pd/2) {
vx = (bx- px) /10;
vy = (by - py)/10;
}

if (by < bd/2 || by > height - bd/2) {    // bottom wall, turn off later
vy = vy * 1;
}

if( bx < bd/2 || bx > width -bd/2) {    // bounce of top wall
 vx = vx * -1;

}

//brick ------------------------------------------------------------------
//circle(x[0],y[0],brickd);
// circle(x[1],y[1],brickd);
// circle(x[2],y[2],brickd);

int i = 0;
while(i < n){
  circle(x[i],y[i],brickd);
  i = i+1;
}
}

void gameClicks() {
  
}
