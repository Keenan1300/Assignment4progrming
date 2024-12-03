//initialize variables//

//initialize float variables
float enviroPositiveX;
float enviroNegativeX;
float bulletUIposition;
float healthUIposition;
float armourUIposition;
float guncooldown;

//initialize float variables for zombie positions
int Zombie1positionX;
int Zombie2positionX;
int Zombie3positionX;
int Zombie4positionX;
int Zombie5positionX;
int Zombie6positionX;
int Zombie7positionX;
int Zombie8positionX;
int Zombie9positionX;
int Zombie10positionX;

//initialize int variables
int AMMOCOUNT;
int ARMOURCOUNT;
int MAXAMMOCOUNT;
int HPCOUNT;
int MAXHPCOUNT; 
int MAXARMOURCOUNT;
int ZombSpawnCooldown;
int jammer;
int ZombCount; 

//initialize booleans
boolean TitleScreen;
boolean WinScreen;
boolean LoseScreen;
boolean MainGame;
boolean character2;
boolean character1;
boolean GUNISJAMMED;
boolean gunshot;

//initialize images
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
PImage Armour;
PImage Health;
PImage GameUI;
PImage character2UIscreen;
PImage character1UIscreen;
PImage GUNJAMMED;
PImage YouWinScreen;

//initialize arraylists
Bullets[] B = new Bullets[3];
Healthpoints[] H = new Healthpoints[3];
Armourpoints[] A = new Armourpoints[3];

Zombies[] Z = new Zombies[(int)random(-200,1200)];

ZombieSpawn z;
Healthpointsarray h;
ArrayList<ZombieSpawn> zombie;
ArrayList<Healthpointsarray> health;

void setup() {

//setup arrays
zombie = new ArrayList<ZombieSpawn>();

//setup random numbers
Zombie1positionX = (int)random(-300,1200);
Zombie2positionX = (int)random(-300,1200);
Zombie3positionX = (int)random(-300,1200);
Zombie4positionX = (int)random(-300,1200);
Zombie5positionX = (int)random(-300,1200);
Zombie6positionX = (int)random(-300,1200);
Zombie7positionX = (int)random(-300,1200);
Zombie8positionX = (int)random(-300,1200);
Zombie9positionX = (int)random(-300,1200);
Zombie10positionX = (int)random(-300,1200);

//allow for cooldowns
 guncooldown = 10;
 ZombSpawnCooldown = 50;
 



 
//Default difficulty mode enabled.

//setup health points
 H[0] = new Healthpoints(5);

//setup ammo counts
 B[0] = new Bullets(6);

//setup armour points
 A[0] = new Armourpoints(5);
 
 //Activate this line for medium difficulty
 
 //setup healthpoints
 //H[1] = new Healthpoints(4);
 
 //setup armour points
 //A[1] = new Armourpoints(2);
 
 //setup ammo counts
 //B[1] = new Bullets(4);
 
 
 //Activate this line for Hard difficulty

 //health points
 //H[2] = new Healthpoints(3);
 
 //setup armour points
 //A[2] = new Armourpoints(0);
 
 //setup ammo counts
 //B[2] = new Bullets(3);

 
 
//Array For zombie generation
 Z[0] = new Zombies(Zombie1positionX,360);
 Z[1] = new Zombies(Zombie2positionX,360);
 Z[2] = new Zombies(Zombie3positionX,360);
 Z[3] = new Zombies(Zombie4positionX,360);
 Z[4] = new Zombies(Zombie5positionX,360);
 Z[5] = new Zombies(Zombie6positionX,360);
 Z[6] = new Zombies(Zombie7positionX,360);
 Z[7] = new Zombies(Zombie8positionX,360);
 Z[8] = new Zombies(Zombie9positionX,360);
 Z[9] = new Zombies(Zombie10positionX,360);
 
 
//setup UI positioning for main game - assists arraylists in locating where they should display statistics
 bulletUIposition = 220;
 healthUIposition = 576;
 armourUIposition = 339;
 
//set canvas settings
imageMode(CENTER);
size(920,620);
background(0);
frameRate(30);

//set booleans
TitleScreen = true;
WinScreen = false;
LoseScreen = false;
MainGame = false;
character2 = true;
character1 = false;


//set float variables
enviroPositiveX = 0;
enviroNegativeX = 0;

//Introduce images
//buttons
StartButton = loadImage("start.png");
//background
Landscapebuildings = loadImage("Landscapebuildings.png");
//zombie sprites
closeattacking = loadImage("closeattacking.png");
Zombieapproachmid = loadImage("Zombieapproachmid.png");
zombiefar = loadImage("zombiefar.png");
slash = loadImage("slash.png");
//character pictures
Character2 = loadImage("Character2.png");
character2UIscreen = loadImage("Character2UIscreen.png");
character1UIscreen = loadImage("Character1UIscreen.png");
Crosshairmouse = loadImage("Crosshairmouse.png");
//statistic images
GunSlot = loadImage("GunSlot.png");
Reload = loadImage("Reload.png");
Bullet = loadImage("Bulletammo.png");
Armour = loadImage("Armour.png");
Health = loadImage("Health.png");
GameUI = loadImage("GameUI.png");
GUNJAMMED = loadImage("GUNJAMMED.png");
//gameover
Skull = loadImage("Skull.png");
}

void draw(){
  

  
  //Zombie mechanics - cooldown to allow lapses in time between zombie spawns.
  ZombSpawnCooldown = ZombSpawnCooldown - 1;
  if (ZombSpawnCooldown < 1){
  ZombSpawnCooldown = (int)random(50,65);
  }
  Z[0].update();
  Z[1].update();
  Z[2].update();
  Z[3].update();
  Z[4].update();
  Z[5].update();
  Z[6].update();
  Z[7].update();
  Z[8].update();
  Z[9].update();
  
  
  
  //keep framerate consistent
  frameRate(30);
  
  //make timer for gunshots so player cant shoot everyshot in a few clicks
  guncooldown = guncooldown - 1;
  
  //check what screen the player is on
  if (TitleScreen == true){
  DrawTitleScreen();
  }
  if (WinScreen == true){
  DrawWinScreen();
  }
  if (LoseScreen == true){
  DrawLoseScreen();
  }
  if (MainGame == true){
  DrawMainGame();
  
}

  }
//FireBullet
void mouseClicked() {
if (MainGame == true){
if(guncooldown < 1){
if (mouseY > 100){ 
B[0].shootbullet();
}
}
}
}


//basic button that will transport the player to the main shooter game
void DrawStartButton(){
image(StartButton, 460,310);
if(mouseX > 360 && mouseX < 560){
if(mouseY > 275 && mouseY < 335){
if(mousePressed == true){
  fill(255);
  rect(0,0,100,50);
  MainGame = true;
  LoseScreen = false;
  TitleScreen = false;
  WinScreen = false;
  guncooldown = 10;
}
}
}
}

//basic button that will transport the player to the main shooter game
void ReturntotitleButton(){
image(StartButton, 460,310);
if(mouseX > 360 && mouseX < 560){
if(mouseY > 275 && mouseY < 335){
if(mousePressed == true){
  fill(255);
  rect(0,0,100,50);
  MainGame = false;
  LoseScreen = false;
  TitleScreen = true;
  WinScreen = false;
  guncooldown = 10;
}
}
}
}
