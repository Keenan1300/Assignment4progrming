//import sound liberaries for sound effects
import processing.sound.*;
//initialize variables//

//initialize float variables
float enviroPositiveX;
float enviroNegativeX;
float bulletUIposition;
float healthUIposition;
float armourUIposition;
float guncooldown;
float buttonplacement;
float destroyall;
float gunsparktimer;

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
int DeadzombiesCount;

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
PImage Gamelosstext;
PImage GameWintext;
PImage GameWinCrown;
PImage GameTitle;

//initialize audio
SoundFile SHOTSOUND;
SoundFile RELOADSOUND;


//initialize arraylists
Bullets[] B = new Bullets[3];
Healthpoints[] H = new Healthpoints[3];
Armourpoints[] A = new Armourpoints[3];

Zombies[] Z = new Zombies[10];


Healthpointsarray h;
ArrayList<Healthpointsarray> health;

BloodSplatter B;
ArrayList<BloodSplatter> blood;

void setup() {

//setup arrays and booleans
blood = new ArrayList<BloodSplatter>(); 
gunsparktimer = 0;
//Setup Sound effects
SHOTSOUND = new SoundFile(this,"GUNSHOTSOUND.wav");
RELOADSOUND = new SoundFile(this,"RELOADSOUND.wav");

  
//setup arrays


//allow for cooldowns
 guncooldown = 10;
 ZombSpawnCooldown = 0;
 DeadzombiesCount = 0;



 
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
  A[0] = new Armourpoints(5);
  H[0] = new Healthpoints(5);
  B[0] = new Bullets(6);
  Z[0] = new Zombies(Zombie1positionX);
  Z[1] = new Zombies(Zombie2positionX);
  Z[2] = new Zombies(Zombie3positionX);
  Z[3] = new Zombies(Zombie4positionX);
  Z[4] = new Zombies(Zombie5positionX);
  Z[5] = new Zombies(Zombie6positionX);
  Z[6] = new Zombies(Zombie7positionX);
  Z[7] = new Zombies(Zombie8positionX);
  Z[8] = new Zombies(Zombie9positionX);
  Z[9] = new Zombies(Zombie10positionX);
  
  Z[0].isDead = false;
  Z[1].isDead = false;
  Z[2].isDead = false;
  Z[3].isDead = false;
  Z[4].isDead = false;
  Z[5].isDead = false;
  Z[6].isDead = false;
  Z[7].isDead = false;
  Z[8].isDead = false;
  Z[9].isDead = false;
  
  Z[0].approachtimer = random(700,900);
  Z[1].approachtimer = random(700,900);
  Z[2].approachtimer = random(700,900);
  Z[3].approachtimer = random(700,900);
  Z[4].approachtimer = random(700,900);
  Z[5].approachtimer = random(700,900);
  Z[6].approachtimer = random(700,900);
  Z[7].approachtimer = random(700,900);
  Z[8].approachtimer = random(700,900);
  Z[9].approachtimer = random(700,900);
  
  GUNISJAMMED = false;
  DeadzombiesCount = 0;

//Erase all zombies at the start of a game 
 ZombSpawnCooldown = 0;
 ZombCount = 0;

//mix-up zombie positions again to add replayability  
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

//game-over loss
Skull = loadImage("Skull.png");
Gamelosstext = loadImage("Gamelosstext.png");

//game-over win
GameWintext = loadImage("VictoryText.png");
GameWinCrown = loadImage("VictoryCrown.png");

//title page
GameTitle = loadImage("FinalShowDownText.png");
}

void draw(){
 //check what screen the player is on, initates game sequence
  if (TitleScreen == true){
  DrawTitleScreen();
  }
  if (WinScreen == true){
  DrawWinScreen();
  }
  if (LoseScreen == true){
  DrawLoseScreen();
  }
  if (MainGame == true && WinScreen == false && LoseScreen == false && TitleScreen == false){
  DrawMainGame();
  }
  
  //Zombie mechanics - cooldown to allow lapses in time between zombie spawns.
  ZombSpawnCooldown = ZombSpawnCooldown - 1;
  if (ZombSpawnCooldown < 1){
  ZombSpawnCooldown = (int)random(50,65);
  }
  
  
  
  //keep framerate consistent
  frameRate(30);
  
  //make timer for gunshots so player cant shoot everyshot in a few clicks
  guncooldown = guncooldown - 1;

}

//FireBullet
void mouseClicked() {
if (MainGame == true){
if(guncooldown < 1){
if (mouseY > 100){ 
  
//checks if a zombie is hit, and if they are, remove a point of health from them.
Z[0].zombieshot();
Z[1].zombieshot();
Z[2].zombieshot();
Z[3].zombieshot();
Z[4].zombieshot();
Z[5].zombieshot();
Z[6].zombieshot();
Z[7].zombieshot();
Z[8].zombieshot();
Z[9].zombieshot();

//removes bullet from chamber
B[0].shootbullet();
}
}
}
}



//basic button that will transport the player to the main shooter game
void DrawStartButton(){
image(StartButton, 460,510);
if(mouseX > 360 && mouseX < 560){
if(mouseY > 475 && mouseY < 535){
if(mousePressed == true){

  
//reset statistcs to allow for game replayability
  A[0] = new Armourpoints(5);
  H[0] = new Healthpoints(5);
  B[0] = new Bullets(6);
  Z[0] = new Zombies(Zombie1positionX);
  Z[1] = new Zombies(Zombie2positionX);
  Z[2] = new Zombies(Zombie3positionX);
  Z[3] = new Zombies(Zombie4positionX);
  Z[4] = new Zombies(Zombie5positionX);
  Z[5] = new Zombies(Zombie6positionX);
  Z[6] = new Zombies(Zombie7positionX);
  Z[7] = new Zombies(Zombie8positionX);
  Z[8] = new Zombies(Zombie9positionX);
  Z[9] = new Zombies(Zombie10positionX);
  
  Z[0].isDead = false;
  Z[1].isDead = false;
  Z[2].isDead = false;
  Z[3].isDead = false;
  Z[4].isDead = false;
  Z[5].isDead = false;
  Z[6].isDead = false;
  Z[7].isDead = false;
  Z[8].isDead = false;
  Z[9].isDead = false;
  
  Z[0].approachtimer = random(700,900);
  Z[1].approachtimer = random(700,900);
  Z[2].approachtimer = random(700,900);
  Z[3].approachtimer = random(700,900);
  Z[4].approachtimer = random(700,900);
  Z[5].approachtimer = random(700,900);
  Z[6].approachtimer = random(700,900);
  Z[7].approachtimer = random(700,900);
  Z[8].approachtimer = random(700,900);
  Z[9].approachtimer = random(700,900);
  
  GUNISJAMMED = false;
  DeadzombiesCount = 0;

//Erase all zombies at the start of a new game 
 ZombSpawnCooldown = 0;
 ZombCount = 0;

//mix-up zombie positions again to add replayability  
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

//navigates player to main game, disable all others so no overlap occurs
TitleScreen = false;
MainGame = true;
LoseScreen = false;
WinScreen = false;
guncooldown = 10;
  
}
}
}
}

//basic button that will transport the player to the main shooter game
void ReturntotitleButton(){
 
image(StartButton, 460,280);
if(mouseX > 360 && mouseX < 560){
if(mouseY > 255 && mouseY < 305){
if(mousePressed == true){
  MainGame = false;
  LoseScreen = false;
  WinScreen = false;
  TitleScreen = true;
  guncooldown = 10;
}
}
}
}
