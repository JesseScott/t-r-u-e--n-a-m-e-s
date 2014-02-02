
// VARIABLES

int screenState = 0;  

String alphabet = "abcdefghijklmnopqrstuvwxzy";
int wordLength = 5;
String theWord = "";
String[] joinedCharacters;

PFont mainFont;

// SETUP

void setup() {
  // Screen
  size(1280, 720);
  smooth();
  background(0);
  fill(255);
  
  // Font
  mainFont = loadFont("HelveticaNeue-72.vlw");
  textFont(mainFont);
  
  // String Array
  joinedCharacters = new String[wordLength];
  
}


// DRAW

void draw() {
  // Screen
  background(0);
  
  // Word
  text(theWord, width/3, height/2);
  
}


// MOUSE

void mousePressed() {
  
  generateWord();
  
}

// CUSTOM

String generateWord() {
  String  randomWord = "";
  
  for(int i = 0; i < wordLength; i++) {
     
    
  }
  
  return randomWord;
}

String generateCharacter() {
  char tmpChar = alphabet.charAt(int(random(25)));
  String randomLetter = Character.toString(tmpChar);
  
  return randomLetter; 
}

