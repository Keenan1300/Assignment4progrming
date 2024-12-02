void DrawMainGame(){

//Create Rotational map effect
if(mouseX > 690 && enviroPositiveX > -450){
enviroNegativeX = enviroNegativeX + 4;
enviroPositiveX = enviroPositiveX - 4;
}
if(mouseX < 230 && enviroNegativeX > -450){
enviroPositiveX = enviroPositiveX + 4;
enviroNegativeX = enviroNegativeX - 4;
}
image(Landscapebuildings, (460 + enviroPositiveX) - enviroNegativeX,310);
image(GameUI,460,310);
//create mousecross hair
image(Crosshairmouse, mouseX,mouseY);


}
