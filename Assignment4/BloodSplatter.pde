class BloodSplatter {
 PVector location;
 PVector velocity;
 PVector acceleration;
 boolean killed;
 float duration = 300;
 float bleedinglocation;
 int i;
 
 BloodSplatter(float tempD){
 bleedinglocation = tempD;
 acceleration = new PVector(1,3);
 velocity = new PVector(random(-7,7), random(-15,15));
 location = new PVector(bleedinglocation,310);
 }
 
  void update(){
  velocity.add(acceleration);
  location.add(velocity);
  duration -= 35;
  destroyall += 1;
  }
  
  boolean killed(){
  if (duration <=0) {
  return true;
  }
  else{
  return false;}
  }
  
  void displayblood(){
   noStroke();
   fill(255,90,0);
   rectMode(CENTER);
   rect(location.x,location.y,8,8);
 }

}
