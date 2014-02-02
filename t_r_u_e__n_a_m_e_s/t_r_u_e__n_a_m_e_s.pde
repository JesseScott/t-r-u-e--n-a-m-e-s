
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
  
  // Text
  theWord = "try me";
  
}


// DRAW

void draw() {
  // Screen
  background(0);
  
  // Word
  text(theWord, width/2 - 128, height/2);
  
}


// MOUSE

void mousePressed() {
  
  println("------");
  theWord = generateWord();
  println("------");
  
}

// CUSTOM

String generateWord() {
  String  randomWord = "";
  println("Random Word is empty\n");
  
  for(int i = 0; i < wordLength; i++) {
     joinedCharacters[i] = generateCharacter();
     println("Joined Characters Array #" + i + " is being set to " + joinedCharacters[i]);
     randomWord = join(joinedCharacters, "");
     println("Random Word is being appended to be " + randomWord + "\n");
  }

  println("Now Random Word is " + randomWord);  
  return randomWord;
}

String generateCharacter() {
  char tmpChar = alphabet.charAt(int(random(25)));
  println("Random Char is " + tmpChar);
  String randomLetter = Character.toString(tmpChar);
  println(" - and its been converted to a string " + randomLetter);
  
  return randomLetter; 
}

