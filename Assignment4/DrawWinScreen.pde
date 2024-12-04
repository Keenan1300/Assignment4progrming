void DrawWinScreen(){
MainGame = false;
LoseScreen = false;
fill(#2c0000);
rectMode(CORNER);
rect(0,0,920,620);
image(GameWintext,460,560);
image(GameWinCrown,460,310);
ReturntotitleButton();
}
