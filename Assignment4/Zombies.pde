class Zombies{
  float approachtimer;
  float Xlocation; 
  float progression;
  float ZombieHP = 2;
  float mercyperiod = 3000;
  boolean isDead = false;
  boolean targeted = false;
  BloodSplatter C;
  ArrayList<BloodSplatter> blood;
  
  Zombies(float tempD){
  Xlocation = tempD;
  blood = new ArrayList<BloodSplatter>(); 
  }

 void display(){
   
   //check if zombieHP is higher than 0, and if it is, then show the zombie
   if (ZombieHP > 0){
   progression = (Xlocation - enviroNegativeX) + enviroPositiveX;
   if (approachtimer > 550 ){
   image(zombiefar,progression,390);
   }
    if (approachtimer < 550 ){
   image(Zombieapproachmid,progression,330);
   }
    if (approachtimer < 150 ){
   image(closeattacking,progression,330);
    mercyperiod =  mercyperiod - 100;
   if(mercyperiod < 1){
   if (ARMOURCOUNT > 0){
   mercyperiod = 3000;
   ARMOURCOUNT = ARMOURCOUNT - 1;
   }
   else{
   mercyperiod = 3000;
   HPCOUNT = HPCOUNT - 1;
   }
   }
   }
 }
        //zombies bleed if they are hit by bullet
if (ZombieHP == 1){
   blood.add(new BloodSplatter(progression));
   
  //Zombie bleeds if it is shot
   for(int d = 0; d < blood.size();d++){
   BloodSplatter B = blood.get(d);
   B.update();
   B.displayblood();
   gunsparktimer = gunsparktimer - 1;
   }  
   
}
 }
 
void update(){

 if (ZombieHP < 0){
   isDead = true;
 } 
 if (approachtimer > 0){ 
 mercyperiod = mercyperiod - 1;
 approachtimer = approachtimer - 2;
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

 
 
if(mouseX > progression - 50 && mouseX < progression + 50){
if(mouseY > 120){
targeted = true;
}
else{ 
targeted = false;
}
}
}

void zombieshot()
{
  if(targeted == true){
  if(GUNISJAMMED == false){
  if(guncooldown < 1){
   ZombieHP = ZombieHP - 1;
  
}

if(isDead == true){
DeadzombiesCount = DeadzombiesCount + 1;
}
gunshot = false;
}
}
}
}
