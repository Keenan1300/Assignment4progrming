void DrawTitleScreen(){
//set fitting background  
MainGame = false;
LoseScreen = false;
WinScreen = false;
fill(#2c0000);
rectMode(CORNER);
rect(0,0,920,620);
image(GameTitle,460,210);
DrawStartButton();
}
