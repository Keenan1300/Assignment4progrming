//initialize variables//
float hey;

boolean TitleScreen;
boolean WinScreen;
boolean LoseScreen;
boolean MainGame;


void setup()
{ 
size(920,620);
background(0);
TitleScreen = true;
WinScreen = false;
LoseScreen = false;
MainGame = false;
}

void draw()
{
  if (TitleScreen == true){
  DrawTitleScreen();
  }
  if (WinScreen == true){
  DrawTitleScreen();
  }
  if (LoseScreen == true){
  DrawLoseScreen();
  }
  if (MainGame == true){
  DrawMainGame();
  }

}

void DrawStartButton(){
PIimage


}
