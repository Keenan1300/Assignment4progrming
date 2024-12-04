void DrawLoseScreen(){
MainGame = false;
TitleScreen = false;
WinScreen = false;
fill(#2c0000);
rectMode(CORNER);
rect(0,0,920,620);
image(Gamelosstext,460,550);
image(Skull,460,260);
ReturntotitleButton();
}
