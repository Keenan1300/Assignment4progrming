//initialize variables//

//initialize float variables
float hey;
float enviroPositiveX;
float enviroNegativeX;
float bulletUIposition;
float healthUIposition;
float armourUIposition;
float guncooldown;

//initialize int variables
int AMMOCOUNT;
int MAXAMMOCOUNT;
int HPCOUNT;
int MAXHPCOUNT; 
int ARMOURCOUNT;
int MAXARMOURCOUNT;
int ZombSpawnCooldown;
int jammer;

//initialize booleans
boolean TitleScreen;
boolean WinScreen;
boolean LoseScreen;
boolean MainGame;
boolean character2;
boolean character1;
boolean GUNISJAMMED;

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

//initialize arraylists
Zombies Z;
ArrayList<Zombies> Zomb;

Bullets[] B = new Bullets[3];
Healthpoints[] H = new Healthpoints[3];
Armourpoints[] A = new Armourpoints[3];

void setup() {

//allow for cooldowns
 guncooldown = 10;
 ZombSpawnCooldown = 20;
 
//setup ammo counts
 B[0] = new Bullets(6);
 B[1] = new Bullets(4);
 B[2] = new Bullets(3);

//setup health points
 H[0] = new Healthpoints(5);
 H[1] = new Healthpoints(4);
 H[2] = new Healthpoints(3);
 
//setup armour points
 A[0] = new Armourpoints(5);
 A[1] = new Armourpoints(2);
 A[2] = new Armourpoints(0);
 
//Arraylist For zombie generation
 Zomb = new ArrayList<Zombies>();
 
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
  println(ZombSpawnCooldown);
  if (ZombSpawnCooldown < 1){
  ZombSpawnCooldown = (int)random(10,65);
  }
  
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

//FireBullet
void mouseClicked() {
if (MainGame == true){
if(guncooldown < 1){
if (mouseY > 123){  
B[0].shootbullet();
guncooldown = 25;
}
}
}
}
