
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
  
  // Draw The Word
  text(theWord, width/2 - 128, height/2);
  
}


// MOUSE

void mousePressed() {
  
  // Generate A New Word
  println("------");
  theWord = generateWord();
  println("------");
  
}

// CUSTOM

String generateWord() {
  
  // Placeholder Word
  String  randomWord = "";
  println("Random Word is empty\n");
  
  // Loop For The Number OF Characters In The Desired Word
  for(int i = 0; i < wordLength; i++) {
    // If We Are The First Character, Choose Anything
    if(i == 0) {
      joinedCharacters[i] = generateCharacter();
      println("Joined Characters Array #" + i + " is being set to " + joinedCharacters[i]);      
    }
    // Otherwise Lets Try To Alternate Vowels And Consonants
    else {
      if(joinedCharacters[i-1].equals("a")) {
        
      }
      joinedCharacters[i] = generateCharacter();
      println("Joined Characters Array #" + i + " is being set to " + joinedCharacters[i]);
    }
     
    // Join The Latest Character To The Rest Of The Word
    randomWord = join(joinedCharacters, "");
    println("Random Word is being appended to be " + randomWord + "\n");
     
  }

  println("Now Random Word is " + randomWord);  
  return randomWord;
}

String generateCharacter() {
  
  // Generate A Random Character From Somewhere In The Alphabet
  char tmpChar = alphabet.charAt(int(random(25)));
  print("Random Character is " + tmpChar);
  
  // Convert It To A String
  String randomLetter = Character.toString(tmpChar);
  
  return randomLetter; 
}

