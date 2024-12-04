class Armourpoints{
 Armourpoints(int tempD){
 ARMOURCOUNT = tempD;
 MAXARMOURCOUNT = tempD;
 }
void displaycount(){
if (MainGame == true) {

if((int)ARMOURCOUNT == 5){
gunsparks = true ;
image(Armour,armourUIposition, 582);
image(Armour,armourUIposition-30,582);
image(Armour,armourUIposition-60,582);
image(Armour,armourUIposition-90,582);
image(Armour,armourUIposition-120,582);
}
if((int)ARMOURCOUNT == 4){
image(Armour,armourUIposition,582);
image(Armour,armourUIposition-30,582);
image(Armour,armourUIposition-60,582);
image(Armour,armourUIposition-90,582);
}
if((int)ARMOURCOUNT == 3){
image(Armour,armourUIposition,582);
image(Armour,armourUIposition-30,582);
image(Armour,armourUIposition-60,582);
}
if((int)ARMOURCOUNT == 2){
image(Armour,armourUIposition,582);
image(Armour,armourUIposition-30,582);
}
if((int)ARMOURCOUNT == 1){
image(Armour,armourUIposition,582);
}
}
}

}
