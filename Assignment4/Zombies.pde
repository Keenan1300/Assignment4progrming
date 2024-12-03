class Zombies{
  float approachtimer;
  float Xlocation; 
  float progression;
  float ZombieHP = 2;
  boolean isDead = false;
  
  Zombies(int tempD, int tempE){
  Xlocation = tempD;
  approachtimer = tempE;
  }

 void display(){
   if (ZombieHP > 0){
   progression = (Xlocation - enviroNegativeX) + enviroPositiveX;
   if (approachtimer > 250 ){
   image(zombiefar,progression,390);
   }
    if (approachtimer < 250 ){
   image(Zombieapproachmid,progression,330);
   }
    if (approachtimer < 100 ){
   image(closeattacking,progression,330);
   }
 }
 }
 
void update(){
 if (approachtimer > 0){ 
 approachtimer = approachtimer - 1;
 }
  println(approachtimer);
if(mouseX > progression - 50 && mouseX < progression + 50){
if(mouseY > 280 && mouseY < 360){
if(mousePressed == true){
if(GUNISJAMMED == false){
if(guncooldown < 1){
 ZombieHP = ZombieHP - 1;
}
}
if(ZombieHP == 0){
isDead = true;
}
if(isDead == true){
approachtimer = 50;
}
}
}
}
}
 }
