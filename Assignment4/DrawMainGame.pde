void DrawMainGame(){
//Create Rotational map effect
if(mouseX > 690 && enviroPositiveX > -450){
enviroNegativeX = enviroNegativeX + 4;
enviroPositiveX = enviroPositiveX - 4;
}
if(mouseX < 230 && enviroNegativeX > -450){
enviroPositiveX = enviroPositiveX + 4;
enviroNegativeX = enviroNegativeX - 4;
}
image(Landscapebuildings, (460 + enviroPositiveX) - enviroNegativeX,310);
image(GameUI,460,310);
if (character2 == true){
image(character2UIscreen,460,310);
}


//create mousecross hair
image(Crosshairmouse, mouseX,mouseY);

//Reload Button functionality - allows player to reload bullets
if (mouseY < 72 && mouseX < 206 && mouseY > 17 && mouseX > 133){
if(mousePressed == true){
B[0].reload();
}
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


//This button is for the times when the gun jams and the player needs to unjam it!
if (mouseY < 120 && mouseX < 206 && mouseY > 72 && mouseX > 133){
if(mousePressed == true){
GUNISJAMMED = false;
}
}
}

if (ZombSpawnCooldown < 2){
  Zomb.add(new Zombies());
  }

}
