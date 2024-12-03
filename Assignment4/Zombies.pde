class Zombies{
  float approachtimer;
  float Xlocation; 
  float progression;
  float ZombieHP = 2;
  float mercyperiod = 2000;
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
    mercyperiod =  mercyperiod - 100;
   if(mercyperiod < 1){
   if (ARMOURCOUNT > 0){
   mercyperiod = 2000;
   ARMOURCOUNT = ARMOURCOUNT - 1;
   }
   else{
   mercyperiod = 2000;
   HPCOUNT = HPCOUNT - 1;
   }
   }
   }
 }
 }
 
void update(){
 if (approachtimer > 0){ 
 mercyperiod = mercyperiod - 1;
 approachtimer = approachtimer - 1;
 }
 
 if (approachtimer < 100 ){
   if(mercyperiod < 1){
   if (ARMOURCOUNT > 0){
   ARMOURCOUNT = ARMOURCOUNT - 1;
   mercyperiod = 30;
   }
   else{
   HPCOUNT = HPCOUNT - 1;
   mercyperiod = 30;
   }
   }
   }
 
  println(approachtimer);
if(mouseX > progression - 50 && mouseX < progression + 50){
if(mouseY > 280 && mouseY < 360){
if(gunshot == true){
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
gunshot = false;
}
}
}
}
 }
