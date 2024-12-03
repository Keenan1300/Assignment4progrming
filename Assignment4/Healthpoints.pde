class Healthpoints{
 Healthpoints(int tempD){
 HPCOUNT = tempD;
 MAXHPCOUNT = tempD;
 }
void displaycount(){
if (MainGame == true) {

if((int)HPCOUNT == 5){
image(Health,healthUIposition, 582);
image(Health,healthUIposition+30,582);
image(Health,healthUIposition+60,582);
image(Health,healthUIposition+90,582);
image(Health,healthUIposition+120,582);
}
if((int)HPCOUNT == 4){
image(Health,healthUIposition,582);
image(Health,healthUIposition+30,582);
image(Health,healthUIposition+60,582);
image(Health,healthUIposition+90,582);
}
if((int)HPCOUNT == 3){
image(Health,healthUIposition,582);
image(Health,healthUIposition+30,582);
image(Health,healthUIposition+60,582);
}
if((int)HPCOUNT == 2){
image(Health,healthUIposition,582);
image(Health,healthUIposition+30,582);
}
if((int)HPCOUNT == 1){
image(Health,healthUIposition,582);
}
}
}

}
