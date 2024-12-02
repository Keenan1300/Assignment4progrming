class Zombies{
  PVector location; 
  float progression;
  float approachtimer;
  Zombies(){
  location = new PVector(random(-900,1260),310);
  }
 void update(){
 approachtimer = approachtimer - 1;
 
 }
 void display(){
   progression = location.x;
   if (approachtimer > 40 ){
   image(zombiefar,progression,location.y);
   }
    if (approachtimer < 40 ){
   image(Zombieapproachmid,progression,location.y);
   }
    if (approachtimer < 10 ){
   image(closeattacking,progression,location.y);
   }
 }
 
 void createnewzombie(){
 Zomb.add(new Zombies());
 }
}
