class ZombieSpawn{
  float approachtimer;
  PVector location; 
  float progression;
  float approach;
  float randomX = random(-200,1200);
  
  ZombieSpawn(){
  location = new PVector(randomX,310);
  }

 void display(){
   progression = (location.x - enviroNegativeX) + enviroPositiveX;
   if (approachtimer > 40 ){
   image(zombiefar,progression,310);
   }
    if (approachtimer < 40 ){
   image(Zombieapproachmid,progression,310);
   }
    if (approachtimer < 10 ){
   image(closeattacking,progression,310);
   }
 }

void update(){
 approach = approach + 1;
  println(approachtimer);
 }

}
