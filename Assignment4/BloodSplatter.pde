class BloodSplatter {
 PVector location;
 PVector velocity;
 PVector acceleration;
 boolean killed;
 float duration = 300;
 
 BloodSplatter(){
 acceleration = new PVector(0,0.05);
 velocity = new PVector(random(-1,12), random(-1,12));
 location = new PVector(mouseX + 120,mouseY - 70);
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
   fill(255,100,0);
   ellipse(location.x,location.y,20,20);
 }
  void addbloosplatter(){
   blood.add(new BloodSplatter());
  
  }
}
