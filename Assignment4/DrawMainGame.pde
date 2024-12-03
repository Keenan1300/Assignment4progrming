void DrawMainGame(){
//refresh zombie generation


//Create Rotational map effect - environment settings
if(mouseX > 690 && enviroPositiveX > -450){
enviroNegativeX = enviroNegativeX + 9;
enviroPositiveX = enviroPositiveX - 9;
}
if(mouseX < 230 && enviroNegativeX > -450){
enviroPositiveX = enviroPositiveX + 9;
enviroNegativeX = enviroNegativeX - 9;
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


if (ZombSpawnCooldown < 2){
  ZombCount = ZombCount + 1;
}

if (ZombCount > 16){
  Z[9].update();
  Z[9].display();
}
if (ZombCount > 14){
  Z[8].update();
  Z[8].display();
}
if (ZombCount > 12){
  Z[7].update();
  Z[7].display();
}
if (ZombCount > 10){
  Z[6].update();
  Z[6].display();
}

if (ZombCount > 8){
  Z[5].update();
  Z[5].display();
}
if (ZombCount > 7){
  Z[4].update();
  Z[4].display();
}
if (ZombCount > 5){
  Z[3].update();
  Z[3].display();
}
if (ZombCount > 3){
  Z[2].update();
  Z[2].display();
}
if (ZombCount > 1){
  Z[1].update();
  Z[1].display();
}
if (ZombCount > 0){
  Z[0].update();
  Z[0].display();
}


//create mousecross hair
image(Crosshairmouse, mouseX,mouseY);

//GameUI settings, establish character picture and UI interface position
image(GameUI,460,310);
if (character2 == true){
image(character2UIscreen,460,310);
}

//Display Health
H[0].displaycount();

//Display Armour
A[0].displaycount();

//DisplayAmmo count
B[0].displaycount();

//This image will pop up when the gun is jammed to tell the player they cant shoot!
if(GUNISJAMMED == true){
image(GUNJAMMED,460,310);
}
}
