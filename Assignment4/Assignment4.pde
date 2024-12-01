//initialize variables//
float hey;

boolean TitleScreen;
boolean WinScreen;
boolean LoseScreen;
boolean MainGame;

//images
PImage StartButton;
PImage Landscapebuildings;
PImage closeattacking;
PImage Zombieapproachmid;
PImage zombiefar;
PImage slash;
PImage Character2;
PImage Crosshairmouse;
PImage GunSlot;
PImage Reload;
PImage Skull;
PImage Bullet;

void setup()
{ 
imageMode(CENTER);
size(920,620);
background(0);

//set booleans
TitleScreen = true;
WinScreen = false;
LoseScreen = false;
MainGame = false;

//Introduce images
StartButton = loadImage("start.png");
Landscapebuildings = loadImage("Landscapebuildings.png");
closeattacking = loadImage("closeattacking.png");
Zombieapproachmid = loadImage("Zombieapproachmid.png");
zombiefar = loadImage("zombiefar.png");
slash = loadImage("slash.png");
Character2 = loadImage("Character2.png");
Crosshairmouse = loadImage("Crosshairmouse.png");
GunSlot = loadImage("GunSlot.png");
Reload = loadImage("Reload.png");
Skull = loadImage("Skull.png");
Bullet = loadImage("Bulletammo.png");

}

void draw()
{
  if (TitleScreen == true){
  DrawTitleScreen();
  }
  if (WinScreen == true){
  DrawTitleScreen();
  }
  if (LoseScreen == true){
  DrawLoseScreen();
  }
  if (MainGame == true){
  DrawMainGame();
  }

}

void DrawStartButton(){
image(StartButton, 460,310);
if(mouseX > 360 && mouseX < 560){
if(mouseY > 275 && mouseY < 335){
if(mousePressed == true){
  fill(255);
  rect(0,0,100,50);
  MainGame = true;
}
}
}
}
