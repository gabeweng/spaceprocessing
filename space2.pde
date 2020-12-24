//Gabriel Weng
float sunX = 400;
float sunY = 300;
float planetX;
float planetY;
float moonX;
float moonY;
float degree = 0;
char planetMode = '1'; //1 is mercury 2 is venus... using digits because mars and mercury have the same letter
int planetSize;
int planetDistance;
float ufo=400; //where it is
int ufoD=2; //ufo direction
int rocket=400;
boolean meteorite;
float startX; //where the meteorite starts
float startY;
int mY;
int m2Y;
int mType;
float mRot;
color random;
void setup() {
  size(800, 600);
  background(0);
}
void draw() {
  background(0);
  stroke(255, 0, 0, 4);
  noFill();
  for (int i=0; i<100; i++) { //nice sun glowy rings
    strokeWeight(i);
    circle(sunX, sunY, 100);
  }
  strokeWeight(2);
  stroke(#FFC70D);
  fill(#FF9008);
  circle(sunX, sunY, 100);
  if (planetMode == '1') { //mercury
    noStroke();
    fill(#C9C9C9); //this is why i need to use an if statement
    planetSize = 15;
    planetDistance = 75;
    planetX = sunX + planetDistance * sin(degree);
    planetY = sunY + planetDistance * cos(degree);
    circle(planetX, planetY, planetSize);
  }
  if (planetMode == '2') { //venus
    noStroke();
    fill(#d5dbe5);
    planetSize = 25;
    planetDistance = 100;
    planetX = sunX + planetDistance * sin(degree);
    planetY = sunY + planetDistance * cos(degree);
    circle(planetX, planetY, planetSize);
    fill(#ead7c0);
    arc(planetX, planetY, planetSize, planetSize, radians(325), radians(215+360), OPEN);
    fill(#dfbb94);
    arc(planetX, planetY, planetSize, planetSize, radians(350), radians(190+360), OPEN);
    fill(#ead7c0);
    arc(planetX, planetY, planetSize, planetSize, radians(10), radians(170), OPEN);
    fill(#d5dbe5);
    arc(planetX, planetY, planetSize, planetSize, radians(215-180), radians(325-180), OPEN);
  }
  if (planetMode == '3') { //earth
    noStroke();
    fill(#1621DB);
    planetSize = 25;
    planetDistance = 125;
    planetX = sunX + planetDistance * sin(degree);
    planetY = sunY + planetDistance * cos(degree);
    earth(planetX, planetY, planetSize);
    moonX= planetX + 20 * sin(degree*4);
    moonY = planetY + 20 * cos(degree*4);
    fill(200);
    circle(moonX, moonY, 10); //moon
  }
  if (planetMode == '4') { //mars
    noStroke();
    fill(252, 131, 94); //this is why i need to use an if statement
    planetSize = 18;
    planetDistance = 150;
    planetX = sunX + planetDistance * sin(degree);
    planetY = sunY + planetDistance * cos(degree);
    circle(planetX, planetY, planetSize);
    fill(#EDE1E1);
    arc(planetX, planetY, planetSize, planetSize, 5*QUARTER_PI, 7*QUARTER_PI, OPEN);
    fill(139, 100, 83, 150);
    arc(planetX, planetY, planetSize, planetSize, radians(10), radians(170), OPEN);
  }
  if (planetMode == '5') { //jupiter
    noStroke();
    planetSize = 40;
    planetDistance = 175;
    planetX = sunX + planetDistance * sin(degree);
    planetY = sunY + planetDistance * cos(degree);
    fill(146, 142, 125); //top
    circle(planetX, planetY, planetSize);
    fill(219, 201, 180);
    arc(planetX, planetY, planetSize, planetSize, radians(315), radians(225+360), OPEN);
    fill(235, 237, 250);
    arc(planetX, planetY, planetSize, planetSize, radians(335), radians(205+360), OPEN);
    fill(155, 99, 78);
    arc(planetX, planetY, planetSize, planetSize, radians(342.5), radians(197.5+360), OPEN);
    fill(252, 242, 221);
    arc(planetX, planetY, planetSize, planetSize, radians(350), radians(190+360), OPEN);
    fill(155, 99, 78, 200);
    arc(planetX, planetY, planetSize, planetSize, radians(365), radians(175+360), OPEN);
    fill(191, 184, 168);
    arc(planetX, planetY, planetSize, planetSize, radians(385), radians(155+360), OPEN);
  }
  if (planetMode == '6') { //saturn
    noStroke();
    planetSize = 35;
    planetDistance = 200;
    planetX = sunX + planetDistance * sin(degree);
    planetY = sunY + planetDistance * cos(degree);
    fill(67, 76, 82); //top
    circle(planetX, planetY, planetSize);
    fill(158, 156, 126);
    arc(planetX, planetY, planetSize, planetSize, radians(305), radians(235+360), OPEN);
    fill(117, 115, 89, 150);
    arc(planetX, planetY, planetSize, planetSize, radians(325), radians(215+360), OPEN);
    fill(228, 193, 122);
    arc(planetX, planetY, planetSize, planetSize, radians(340), radians(200+360), OPEN);
    fill(203, 167, 113);
    arc(planetX, planetY, planetSize, planetSize, radians(370), radians(170+360), OPEN);
    fill(228, 193, 122, 100); //makes the colors seem less striking
    circle(planetX, planetY, planetSize);
    noFill();
    stroke(158, 156, 126);
    strokeWeight(3);
    arc(planetX, planetY, planetSize*1.5, planetSize/4, radians(50+90), radians(50+360), OPEN); //ring
  }
  if (planetMode == '7') { //uranus
    noStroke();
    fill(161, 198, 204);
    planetSize = 30;
    planetDistance = 225;
    planetX = sunX + planetDistance * sin(degree);
    planetY = sunY + planetDistance * cos(degree);
    circle(planetX, planetY, planetSize);
  }
  if (planetMode == '8') { //neptune
    noStroke();
    fill(66, 109, 250);
    planetSize = 30;
    planetDistance = 250;
    planetX = sunX + planetDistance * sin(degree);
    planetY = sunY + planetDistance * cos(degree);
    circle(planetX, planetY, planetSize);
  }
  if (planetMode == '9') { //pluto
    noStroke();
    fill(236, 193, 158);
    planetSize = 15;
    planetDistance = 275;
    planetX = sunX + planetDistance * sin(degree);
    planetY = sunY + planetDistance * cos(degree);
    circle(planetX, planetY, planetSize);
  }
  if (planetMode == '0') { //random
    noStroke();
    fill(random);
    planetX = sunX + planetDistance * sin(degree);
    planetY = sunY + planetDistance * cos(degree);
    circle(planetX, planetY, planetSize);
  }
  degree = (degree + 0.005)%360;
  pushMatrix();
  translate(ufo, 100); //i wanted it to rotate so im doing this, otherwise i would just draw it at those points
  rotate(radians(ufoD*10));
  ufo(0, 0);
  ufo+=ufoD;
  if (ufo<=100||ufo>=700) { //this is my horizontal motion that bounces
    ufoD=ufoD*-1;
  }
  popMatrix();
  rocket(100, rocket); //this is my vertical movement that wraps around
  rocket=rocket-2; // moves it
  if (rocket<-100) { //resets
    rocket=900;
  }
  if (meteorite) { //this is my diagonal motion
    pushMatrix();
    translate(startX, startY);
    rotate(mRot);
    meteorite(mY, m2Y);
    popMatrix();
    mY--;
    if (mY<-200) {
      m2Y=mY+200;
    }
  }
  fill(255);
  textSize(10);
  text("Press keys 1-9 to get planets Mercury to Pluto and use 0 to get a random planet. Also click to get a meteorite which spawns and moves randomly.", 600, 500, 200, 100);
}
void keyPressed() {
  planetMode = key; //makes the planet mode whatever you press
  if (planetMode == '0') { //makes everything random
    planetSize = int(random(15, 41));
    planetDistance = int(random(100, 251));
    random = color(random(0, 255), random(0, 255), random(0, 255));
  }
}
void mousePressed() {
  mType = int(random(1, 5));
  switch(mType) { //better than writing a thousand if statements
  case 1: //makes random spawning places on the edge
    startX=random(0, width);
    startY=0;
    break;
  case 2:
    startX=0;
    startY=random(0, height);
    break;
  case 3:
    startX=random(0, width);
    startY=height;
    break;
  case 4:
    startX=width;
    startY=random(0, height);
    break;
  }
  //startX=mouseX; just for testing
  //startY=mouseY;
  meteorite = true;
  mY=0;
  m2Y=0;
  if (startY<mouseY) {
    mRot = (PI-atan((startX-mouseX)/(startY-mouseY)));
  }
  if (startY>=mouseY&&startX<mouseX) {
    mRot = (HALF_PI-atan((-1*(startY-mouseY))/(startX-mouseX)));
  }
  if (startY>=mouseY&&startX>=mouseX) {
    mRot = (-1*(HALF_PI-atan((startY-mouseY)/(startX-mouseX))));
  }
}
void earth(float x, float y, float size) {
  circle(x, y, size);
  fill(255);
  beginShape(); //ice thingie
  vertex(x+1, y);
  vertex(x+1, y+3);
  vertex(x+7, y+3);
  vertex(x+5, y);
  endShape();
  fill(0, 255, 0);
  beginShape(); //land
  vertex(x-5, y+5); //supposed to be eurasia but doesn't look like it
  vertex(x-4, y-1);
  vertex(x-2, y-2);
  vertex(x-1, y-4);
  vertex(x+8, y-5);
  vertex(x, y-10);
  vertex(x-7, y-10);
  vertex(x-10, y-5);
  vertex(x-10, y);
  vertex(x-7, y);
  vertex(x-7, y+5);
  vertex(x-5, y+3); //this is supposed to be NA but it doesn't look like it
  vertex(x-3, y+3);
  vertex(x-1, y+5);
  vertex(x+10, y+5);
  vertex(x+8, y+8);
  vertex(x, y+10);
  vertex(x-3, y+6);
  vertex(x-5, y+6);
  endShape();
}
void ufo(float x, float y) {
  noStroke();
  fill(100);
  ellipse(x, y+5, 150, 50);
  fill(180, 180, 180);
  arc(x, y, 80, 70, PI, 2*PI);
  ellipse(x, y, 80, 20);
}
void rocket(float x, float y) {
  noStroke();
  if (y>300) { //this is intentional
    fill(232, 180, 0); //fire 1
    ellipse(x, y+60, 20, 50);
    fill(250, 219, 40);
    ellipse(x, y+60, 15, 32);
    fill(246, 255, 0);
    ellipse(x, y+60, 10, 25);
  }
  fill(255, 0, 0);
  triangle(x-25, y+5, x-40, y+30, x-20, y+25); //rocket left leg
  triangle(x+25, y+5, x+40, y+30, x+20, y+25); //rocket right leg
  fill(255);
  arc(x, y, 50, 100, radians(300-180), radians(240+180), OPEN); //rocket
  fill(0);
  arc(x, y, 50, 100, radians(240), radians(300), OPEN); //cut off rocket tip
  fill(255, 0, 0);
  triangle(x, y-70, x-20, y-40, x+20, y-40); //red rocket tip
  fill(0, 200, 255);
  circle(x, y-10, 25); //window
}
void meteorite(float y1, float y2) {
  noStroke();
  fill(234, 174, 5);
  circle(0, y1, 50);
  triangle(-25, y1, 25, y1, 0, y2);
  fill(113, 102, 90);
  circle(0, y1, 40);
}
