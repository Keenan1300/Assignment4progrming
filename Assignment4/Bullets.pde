class Bullets{
 int AMMOCOUNT;
 Bullets(int tempD){
 AMMOCOUNT = tempD;
 MAXAMMOCOUNT = tempD;
 }
 
void displaycount(){
if (MainGame == true) {
if((int)AMMOCOUNT == 6 || MAXAMMOCOUNT == 6){
image(Bullet,bulletUIposition,34);
image(Bullet,bulletUIposition+20,34);
image(Bullet,bulletUIposition+40,34);
image(Bullet,bulletUIposition+60,34);
image(Bullet,bulletUIposition+80,34);
image(Bullet,bulletUIposition+100,34);
}
if((int)AMMOCOUNT == 5){
image(Bullet,bulletUIposition,34);
image(Bullet,bulletUIposition+20,34);
image(Bullet,bulletUIposition+40,34);
image(Bullet,bulletUIposition+60,34);
image(Bullet,bulletUIposition+80,34);
}
if((int)AMMOCOUNT == 4){
image(Bullet,bulletUIposition,34);
image(Bullet,bulletUIposition+20,34);
image(Bullet,bulletUIposition+40,34);
image(Bullet,bulletUIposition+60,34);
}
if((int)AMMOCOUNT == 3){
image(Bullet,bulletUIposition,34);
image(Bullet,bulletUIposition+20,34);
image(Bullet,bulletUIposition+40,34);
}
if((int)AMMOCOUNT == 2){
image(Bullet,bulletUIposition,34);
image(Bullet,bulletUIposition+20,34);
}
if((int)AMMOCOUNT == 1){
image(Bullet,bulletUIposition,34);
}
}
}

//Shooting Bullets - take a way one bullet when the gun is shot
void shootbullet() {
if (AMMOCOUNT > 0){
if (GUNISJAMMED == false){
jammer = (int)random(1,9);
if (jammer == 2){
GUNISJAMMED = true;
}
else{
AMMOCOUNT = AMMOCOUNT - 1;
}
}
}
}
void reload() {
//Reload Bullets if currently loaded bullets are less than maximum
if(GUNISJAMMED == false){
if(AMMOCOUNT < 6){
AMMOCOUNT = 6;
}
}
}
}
