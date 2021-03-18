float soldierx = 0;
float soldierspeed=5;
int soldierY = floor(random(80))+160;
int robotX = floor(random(640))+160;
int robotY = floor(random(160))+160;

PImage bgImg;
PImage soilImg;
PImage groundhogImg;
PImage lifeImg;
PImage soldierImg;
PImage robotImg;


void setup() {
	size(640, 480, P2D);
	// Enter Your Setup Code Here
  
  
  bgImg = loadImage("img/bg.jpg");
  soilImg = loadImage("img/soil.png");
  groundhogImg = loadImage("img/groundhog.png");
  lifeImg = loadImage("img/life.png");
  soldierImg = loadImage("img/soldier.png");
  robotImg = loadImage("img/robot.png");
  
}

void draw() {
	// Enter Your Code Here
  
  
  //bg
  image(bgImg,0,0);
  
  //field
  fill(124,204,25);
  noStroke();
  rect(0,145,640,15);
  
  //item
  image(soilImg,0,160);
  image(groundhogImg,280,80);
  image(lifeImg,10,10);
  image(lifeImg,80,10);
  image(lifeImg,150,10);
  
  //soldier
  
  soldierx=soldierx+soldierspeed;
  image(soldierImg,soldierx,soldierY);
  soldierx%= 640;
  
  
  
  //robot
  image(robotImg,robotX,robotY);
  
  
  
  //sun
  
  colorMode(RGB);
  fill(253,184,19);
  stroke(255,255,0);
  strokeWeight(5);
  ellipse(590,50,120,120);
  
  
  

  
  
}
