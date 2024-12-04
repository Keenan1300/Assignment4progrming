void DrawMainGame(){
  
//refresh zombie generation


//Create Rotational map effect - environment settings
if(mouseX > 700 && enviroPositiveX > -450){
enviroNegativeX = enviroNegativeX + 13;
enviroPositiveX = enviroPositiveX - 13;
}
if(mouseX < 200 && enviroNegativeX > -450){
enviroPositiveX = enviroPositiveX + 13;
enviroNegativeX = enviroNegativeX - 13;
}
image(Landscapebuildings, (460 + enviroPositiveX) - enviroNegativeX,310);




//Reload Button functionality - allows player to reload bullets
if (mouseY < 72 && mouseX < 206 && mouseY > 17 && mouseX > 133){
if(mousePressed == true){
B[0].reload();
}
}


//This button is for the times when the gun jams and the player needs to unjam it!
if (mouseY < 120 && mouseX < 206 && mouseY > 72 && mouseX > 133){
if(mousePressed == true){
GUNISJAMMED = false;
}
}


if (ZombSpawnCooldown < 2000){
  ZombCount = ZombCount + 1;
  println(ZombCount);
}

if (ZombCount > 800){
  Z[9].update();
  Z[9].display();
}
if (ZombCount > 800){
  Z[8].update();
  Z[8].display();
}
if (ZombCount > 750){
  Z[7].update();
  Z[7].display();
}
if (ZombCount > 700){
  Z[6].update();
  Z[6].display();
}

if (ZombCount > 600){
  Z[5].update();
  Z[5].display();
}
if (ZombCount > 500){
  Z[4].update();
  Z[4].display();
}
if (ZombCount > 400){
  Z[3].update();
  Z[3].display();
}
if (ZombCount > 300){
  Z[2].update();
  Z[2].display();
}
if (ZombCount > 100){
  Z[1].update();
  Z[1].display();
}
if (ZombCount > 0){
  Z[0].update();
  Z[0].display();
}


//GameUI settings, establish character picture and UI interface position
image(GameUI,460,310);
if (character2 == true){
image(character2UIscreen,460,310);
}

//Display Health
//health.get(0).displaycount();
H[0].displaycount();

//Display Armour
A[0].displaycount();

//DisplayAmmo count
B[0].displaycount();

//This image will pop up when the gun is jammed to tell the player they cant shoot!
if(GUNISJAMMED == true){
image(GUNJAMMED,460,310);
}

//create mousecross hair
image(Crosshairmouse, mouseX,mouseY);

//if player has died switch to lose screen
if(HPCOUNT < 1){
LoseScreen = true;
}

//Establish win condition. If the player can kill 10 zombies they will win.
if(Z[0].isDead == true && Z[1].isDead == true && Z[2].isDead == true && Z[3].isDead == true && Z[4].isDead == true && Z[5].isDead == true && Z[6].isDead == true && Z[7].isDead == true && Z[8].isDead == true && Z[9].isDead == true){
TitleScreen = false;
LoseScreen = false;
MainGame = false;
WinScreen = true;
}

if(ZombCount > 1200){
TitleScreen = false;
LoseScreen = false;
MainGame = false;
WinScreen = true;
}

}
