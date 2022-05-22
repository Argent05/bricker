void intro() {
  intro.play(); 
  background(darkblue);
   textFont(thefont);

//while(counter<10000){  
  
//  textS = textS +0/22222;        randomly enlarging text
//  textSize(textS);
  
   
//  counter = counter+1; 
//}

fill (random(234,255),random(255),random(255));
text("BREAKOUT",width/2,300);

textSize(40);
text("Click to Start", width/2,600);
   
   
   
}

void introClicks() {
  mode = GAME;
 intro.rewind();
 intro.pause();
}
