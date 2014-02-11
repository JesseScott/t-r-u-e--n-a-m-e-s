
// VARIABLES


String alphabet = "abcdefghijklmnopqrstuvwxzy";
String onlyVowels = "aeiouy"; // 6
String onlyConsonants = "bcdfghjklmnpqrstvwxz"; // 20
String[] vowels;
int wordLength = 6;
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
  
  vowels =  new String[6];
  vowels[0] = "a";
  vowels[1] = "e";
  vowels[2] = "i";
  vowels[3] = "o";
  vowels[4] = "u";
  vowels[5] = "y";
  
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
      joinedCharacters[i] = generateCharacter(25);
      println("Joined Characters Array #" + i + " is being set to " + joinedCharacters[i]);      
    }
    // Otherwise Lets Try To Alternate Vowels And Consonants
    else {
      for(int j = 0; j < vowels.length; j++) {
        if(joinedCharacters[i-1].equals(vowels[j])) {
          joinedCharacters[i] = generateCharacter(20);
          println("Joined Characters Array #" + i + " is being set to " + joinedCharacters[i] + " and should be a consonsant");
        }
        else {      
          joinedCharacters[i] = generateCharacter(6);
          println("Joined Characters Array #" + i + " is being set to " + joinedCharacters[i] + " and should be a vowel");
        }
      }

    }
     
    // Join The Latest Character To The Rest Of The Word
    randomWord = join(joinedCharacters, "");
    println("Random Word is being appended to be " + randomWord + "\n");
     
  }

  println("Now Random Word is " + randomWord);  
  return randomWord;
}

String generateCharacter(int stringLength) {
  println("String is " + stringLength);
  
  // Store TMP
  char tmpChar = 'i';
  
  // Any Letter
  if(stringLength == 25) {
    // Generate A Random Character From Somewhere In The Alphabet
    tmpChar = alphabet.charAt(int(random(stringLength)));
    println("Random Character is " + tmpChar);
  }
  
  // Pick A Vowel
  if(stringLength == 6) {
    // Generate A Random Character From Somewhere In The Alphabet
    tmpChar = onlyVowels.charAt(int(random(stringLength)));
    println("Random Character is " + tmpChar);
  }
  
  // Pick A Consonant
  if(stringLength == 20) {
    // Generate A Random Character From Somewhere In The Alphabet
    tmpChar = onlyConsonants.charAt(int(random(stringLength)));
    print("Random Character is " + tmpChar);
  }
  
  
  // Convert It To A String
  String randomLetter = Character.toString(tmpChar);
  
  return randomLetter; 
}

