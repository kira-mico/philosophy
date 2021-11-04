/******
*Title: What is your School of Philosophy?
*Date 11-2-2021
*Author: Minji Kim
*
*Description: A interactive story-line quiz to find out your school of philosophy!
*Hopefully this will make you gauge deeper into who you are
******/

PFont pixel;

PImage[] startButton = new PImage[2] ;

//intro var
PImage[] wizard = new PImage[27] ;
PImage[] wizard2 = new PImage[23] ;
PImage wizard3 ;
int wizardCount = 0;
int wizardCount2 = 0;
int wizardTextCounter = 0;
String[] wizardText = new String[3];
PImage speechBubble ;

//scene 1 var
PImage[] scene1 = new PImage[6] ;
int scene1_gifCount = 0;
PImage textbox ;
int scene1Counter = 0 ;
PImage answerbox ;
int answerCounter_1 = 0;
PImage speechbubble_light ;

//scene 2 var
PImage[] scene2 = new PImage[12] ;
int scene2_gifCount = 0;
int scene2Counter = 0 ;
int answerCounter_2 = 0;

//scene 3 var
PImage[] scene3 = new PImage[6] ;
int scene3_gifCount = 0;
int scene3Counter = 0 ;
int answerCounter_3 = 0;

//scene 4 var
PImage[] scene4 = new PImage[8] ;
int scene4_gifCount = 0;
int scene4Counter = 0 ;
int answerCounter_4 = 0;

//scene 5 var
PImage[] scene5 = new PImage[12] ;
int scene5_gifCount = 0;
int scene5Counter = 0 ;
int answerCounter_5 = 0;

//scene 6 var
PImage[] scene6 = new PImage[7] ;
int scene6_gifCount = 0;
int scene6Counter = 0 ;
int answerCounter_6 = 0;


//scene 7 var
PImage[] scene7 = new PImage[5] ;
int scene7_gifCount = 0;
int scene7Counter = 0 ;
int answerCounter_7 = 0;

//scene 8
PImage[] scene8 = new PImage[16] ;
int scene8_gifCount = 0;
int scene8Counter = 0 ;
int answerCounter_8 = 0;

//calculating your school of philosophy

int nihilism = 0;
int existentialism = 0;
int confucianism = 0;
int pessimism = 0;
int stoicism = 0;
int hedonism = 0;

//end pages
PImage[] resultPage = new PImage[6] ;
//wizard conversation
int wizardTextCounter2 = 0 ;
//loading results
PImage[] loadingGif = new PImage[12] ;
int loadingGifCounter = 0 ;

//calculating results
Boolean isNihilism = false ;
Boolean isExistentialism = false ;
Boolean isConfucianism = false ;
Boolean isPessimism = false ;
Boolean isStoicism = false ;
Boolean isHedonism = false ;
int[] calculator = new int[6] ;
int[] unsorted_calculator = new int[6] ;

//transitions
PImage[] transitionGif1 = new PImage[12] ;
PImage[] transitionGif2 = new PImage[12] ;
int[] transition1 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0} ;
int[] transition2 = {0, 0, 0, 0, 0, 0, 0, 0, 0} ;

//quotes
PImage[] quote = new PImage[18] ;

//blink CTA
Boolean isOn ;

int counter = 0;
void setup() {
  size(800, 700) ;
  frameRate(7) ;
  pixel = createFont("pixel.ttf", 30) ;
  
  upload_startButton() ;
  uploadWizard();
  speechBubble = loadImage("speech bubble.png") ;
  speechBubble.resize(450,0) ;
  uploadScene1() ;
  textbox = loadImage("pixel box.png") ;
  textbox.resize(600,0) ;
  answerbox = loadImage("answerbox.png") ;
  answerbox.resize(750, 0) ;
  uploadScene2() ;
  speechbubble_light = loadImage("speechbubble_light.png") ;
  speechbubble_light.resize(400,0) ;
  uploadScene3() ;
  uploadScene4() ;
  uploadScene5() ;
  uploadScene6() ;
  uploadScene7() ;
  uploadScene8() ; 
  uploadResultPages() ;
  uploadingLoadingPage() ;
  uploadTransitions() ;
  uploadingQuote() ;
  
  textAlign(CENTER) ;
  textFont(pixel) ;
  textSize(30) ;
}

void draw() {
  background(198, 209, 255) ;
  //calculatorAdding();
  
  //println("mouseX is " + mouseX + " mouseY is " + mouseY) ;
  //println(calculator) ;
//  println("hedonism is " + hedonism) ;
//  println("confucianism is " + confucianism) ;
//  println("existentialism is " + existentialism) ;
//  println("pessimism is " + pessimism) ;
//  println("nihilism is " + nihilism) ;
 // println("stoicism is " + stoicism) ;
 // println(calculator) ;
 //println(wizardTextCounter2) ;
 println(counter) ;
 println(scene2Counter) ;
  
  welcomeScreen() ;
  introScreen();
  
  //start of game
  scene1() ;
  scene2() ;
  scene3() ;
  scene4() ;
  scene5() ;
  scene6() ;
  scene7() ;
  scene8() ;
  
  //end of game
  resultLoading() ;
  loadingPage() ;
  publishingResults() ;
  
  
}

void mousePressed() {
  startButtonPressed() ;
  wizardTextCounter() ;
  Scene1Counter() ;
  Scene2Counter() ;
  Scene3Counter() ;
  Scene4Counter() ;
  Scene5Counter() ;
  Scene6Counter() ;
  Scene7Counter() ;
  Scene8Counter() ;
  
  //calculating yourschool
  //schoolCounter() ;
  
}

void keyPressed() {
  
  if(counter == 1 && key == 'f') {
    counter = 2;
  } 
  
  //calculating yourschool
  //schoolCounter() ;
  
}

void upload_startButton() {
  startButton[0] = loadImage("startbutton1.png") ;
  startButton[0].resize(300,0) ;
  startButton[1] = loadImage("startbutton2.png") ;
  startButton[1].resize(300,0) ;
}

void welcomeScreen() {
  if(counter ==0) {
    text("Begin your philosophy journey?", width/2, height/3) ;
  }
  if(counter == 0 && mouseX > 320 && mouseX < 470 && mouseY > 320 && mouseY < 380) {
    image(startButton[0], width/2, height/2) ;
  } else if(counter ==0 ){
    imageMode(CENTER) ;
    image(startButton[1], width/2, height/2) ;
  } 
}

void startButtonPressed() {
  if(mousePressed && mouseX > 320 && mouseX < 470 && mouseY > 320 && mouseY < 380 && counter == 0) {
    counter = 1;
  }
}

void uploadWizard() {
  for (int i = 0; i<wizard.length; i++) {
    wizard[i] = loadImage("wizard" + str(i+1) + ".png") ;
    wizard[i].resize(800, 0);
  }
  
  for (int i = 0; i<wizard2.length; i++){
    wizard2[i] = loadImage("wizard2_" + str(i+1) + ".png") ;
    wizard[i].resize(800, 0);
  }
  
  wizard3 = loadImage("wizard3_3.png") ;
  wizard3.resize(800,0) ;
}

void wizardGif() {
 
  
    
  if(counter == 1) {
    image(speechBubble, width/3-50, height/2) ;
    
  
  }
  
  if(counter == 1 && wizardTextCounter == 1) {
    
    fill(58, 50, 121) ;
    textSize(23) ;
    text( "Welcome", width/2-180, height/2-50) ;
    text( "young philosopher~!", width/2-180, height/2-20) ;
    text( "", width/2-180, height/2+10) ;
  } else if (counter == 1 &&  wizardTextCounter == 2) {
    text( "Today we're going", width/2-180, height/2-50) ;
    text( "to help find your", width/2-180, height/2-20) ;
    text( "school of philosophy", width/2-180, height/2+10) ;
  } else if (counter == 1 &&  wizardTextCounter == 3) {
    text( "But first,", width/2-180, height/2-50) ;
    text( "what are schools", width/2-180, height/2-20) ;
    text( "of philosophy?", width/2-180, height/2+10) ;
  } else if (counter == 1 &&  wizardTextCounter == 4) {
    text( "More commonly", width/2-180, height/2-50) ;
    text( "known as schools of", width/2-180, height/2-20) ;
    text( "thought", width/2-180, height/2+10) ;
  } else if (counter == 1 &&  wizardTextCounter == 5) {
    text( "People in these", width/2-180, height/2-50) ;
    text( "groups agree on", width/2-180, height/2-20) ;
    text( "fundamental truths", width/2-180, height/2+10) ;
  } else if (counter == 1 &&  wizardTextCounter == 6) {
    text( "about the world,", width/2-180, height/2-50) ;
    text( "humans, themselves,", width/2-180, height/2-20) ;
    text( "and thought", width/2-180, height/2+10) ;
  } else if (counter == 1 &&  wizardTextCounter == 7) {
    text( "Examples are 'what", width/2-180, height/2-50) ;
    text( "is morality?' or", width/2-180, height/2-20) ;
    text( "'what is the good life?'", width/2-180, height/2+10) ;
  } else  if (counter == 1 &&  wizardTextCounter == 8) {
    text( "So what is", width/2-180, height/2-50) ;
    text( "this game you ask,", width/2-180, height/2-20) ;
    text( "young philosopher?", width/2-180, height/2+10) ;
  } else  if (counter == 1 &&  wizardTextCounter == 9) {
    text( "Soon, you'll", width/2-180, height/2-50) ;
    text( "be making a series", width/2-180, height/2-20) ;
    text( "of decisions", width/2-180, height/2+10) ;
  } else  if (counter == 1 &&  wizardTextCounter == 10) {
    text( "And with each,", width/2-180, height/2-50) ;
    text( "trial think very", width/2-180, height/2-20) ;
    text( "hard about 'why'", width/2-180, height/2+10) ;
  } else  if (counter == 1 &&  wizardTextCounter == 11) {
    text( "Sometimes that", width/2-180, height/2-50) ;
    text( "is much more telling", width/2-180, height/2-20) ;
    text( "than the'what'", width/2-180, height/2+10) ;
  } else  if (counter == 1 &&  wizardTextCounter == 12) {
    text( "By the end of this", width/2-180, height/2-50) ;
    text( "journey, you will", width/2-180, height/2-20) ;
    text( "know yourself", width/2-180, height/2+10) ;
  } else  if (counter == 1 &&  wizardTextCounter == 13) {
    text( "It's a strange", width/2-180, height/2-50) ;
    text( "thought, really", width/2-180, height/2-20) ;
    text( "", width/2-180, height/2+10) ;
  } else  if (counter == 1 &&  wizardTextCounter == 14) {
    text( "that the ideas", width/2-180, height/2-50) ;
    text( "one has may be older", width/2-180, height/2-20) ;
    text( "than oneself", width/2-180, height/2+10) ;
  } else  if (counter == 1 &&  wizardTextCounter == 15) {
    text( "Enough with ", width/2-180, height/2-50) ;
    text( "my babbling", width/2-180, height/2-20) ;
    text( "", width/2-180, height/2+10) ;
  } else  if (counter == 1 &&  wizardTextCounter == 16) {
    text( "Good luck", width/2-180, height/2-50) ;
    text( "young philosopher!", width/2-180, height/2-20) ;
    text( "", width/2-180, height/2+10) ;
  } else  if (wizardTextCounter == 17) {
    counter = 2 ;
  }
  
  if(wizardCount < wizard.length && counter == 1 && wizardTextCounter < 8) {
    image(wizard[wizardCount], width/2+200, height/2+30) ;
    wizardCount ++ ; 
  } else if(wizardCount == wizard.length && wizardTextCounter < 8) {
    image(wizard[0], width/2+200, height/2+30) ;
    wizardCount = 0 ;
  }
  
  if(wizardCount2 < wizard2.length && wizardTextCounter >= 8 && wizardTextCounter <= 14) {
    image(wizard2[wizardCount2], width/2+300, height/2+30) ;
    wizardCount2++ ;
  } else if(wizardCount2 == wizard2.length && wizardTextCounter >= 8) {
    image(wizard2[0], width/2+300, height/2+30) ;
    wizardCount2 = 0 ;
  }
  
  if(wizardTextCounter > 14 && counter == 1) {
    image(wizard3, width/2+300, height/2+30) ;
  }
  
}

void wizardTextCounter() {
  
  if(counter == 1){
    wizardTextCounter++;
  } 
  
  if(counter == 10){
    wizardTextCounter2++;
  }
}

void introScreen() {
  
  if(counter == 1) {
    wizardGif();
  } 
 
}

void scene1() {
  displayScene1() ;
  
   if(counter == 2 && scene1Counter == 1) {
    image(textbox, width/2+200, height/2+200) ;
    textSize(18) ;
    text(" ", width/2+200, height/2+120) ;
    text(" ", width/2+200, height/2+140) ;
    text(" ", width/2+200, height/2+160) ;
    text("You are back in high school", width/2+200, height/2+180) ;
    text(" ", width/2+200, height/2+200) ;
    text(" ", width/2+200, height/2+220) ;
    text(" ", width/2+200, height/2+240) ;
  } else if( counter == 2 && scene1Counter == 2) {
    image(textbox, width/2+200, height/2+200) ;
    text("You are presented with the ", width/2+200, height/2+120) ;
    text("following college options:", width/2+200, height/2+140) ;
    text(" ", width/2+200, height/2+160) ;
    text("A. Prestigious university but", width/2+200, height/2+180) ;
    text("graduate with student debt", width/2+200, height/2+200) ;
    text("B. Community college for the", width/2+200, height/2+220) ;
    text("same competitive degree", width/2+200, height/2+240) ;
    text("C. Unsure", width/2+200, height/2+260) ;
  } else if( counter == 2 && scene1Counter == 3) {
    image(textbox, width/2+200, height/2+200) ;
    textSize(18) ;
    text("You are presented with the ", width/2+200, height/2+120) ;
    text("following college options:", width/2+200, height/2+140) ;
    text(" ", width/2+200, height/2+160) ;
    text("A. Prestigious university but", width/2+200, height/2+180) ;
    text("graduate with student debt", width/2+200, height/2+200) ;
    text("B. Community college for the", width/2+200, height/2+220) ;
    text("same competitive degree", width/2+200, height/2+240) ;
    text("C. Unsure", width/2+200, height/2+260) ;
    
    
    buttonImage() ;
    
    //text in answer boxes 
    textSize(15) ;
    text("I ought not to leave", 180, 90) ; //L1
    text("my parents in debt, B", 180, 110) ; //L1
    
    text("I wish A, but have doubts", 180, 210) ; //L2
    text("on my academic success,", 180, 230) ; //L2
    text("B or C", 180, 250) ; //L2
    
    text("I will try my utmost", 180, 330) ; //L3
    text("best in any situation, A", 180, 350) ; //L3
    
    text("I want to enjoy the full", 540, 90) ; //R1
    text("college experience, A", 540, 110) ; //R1
    
    text("I deeply value education", 540, 210) ; //R2
    text("so both A and B work", 540, 230) ; //R2
    
    text("Prestige is absolutely", 540, 330) ; //R3
    text("meaningless, B", 540, 350) ; //R3
  } else if( counter == 2 && scene1Counter == 4) {
    counter = 3;  
  }
  
  if(counter == 2) {
    displayTransition1() ;
  }
}

void uploadScene1() {
  for(int i = 0; i<6; i++) {
    scene1[i] = loadImage("scene1_" + str(i+1) + ".png") ;  }}

void displayScene1() {
   if(scene1_gifCount < scene1.length && counter == 2) {
    image(scene1[scene1_gifCount], width/2, height/2) ;
    scene1_gifCount ++ ; 
  } else if(scene1_gifCount == scene1.length && counter == 2) {
    image(scene1[0], width/2, height/2) ;
    scene1_gifCount = 0 ;  }}

void Scene1Counter() {
  if(counter == 2 && scene1Counter < 3){
    scene1Counter++;
  } else if( counter == 2 && scene1Counter >= 3) {
    if ((mouseX > 26 && mouseX < 328 && mouseY > 55 && mouseY < 139) || (mouseX > 26 && mouseX < 328 && mouseY > 94 && mouseY < 258) ||(mouseX > 26 && mouseX < 328 && mouseY > 295 && mouseY < 380) ||(mouseX > 385 && mouseX < 689 && mouseY > 55 && mouseY < 139) ||(mouseX > 385 && mouseX < 689 && mouseY > 94 && mouseY < 258) ||(mouseX > 385 && mouseX < 689 && mouseY > 295 && mouseY < 380)){
      scene1Counter++;
    }
  }
  answer1() ;
}




void scene2() {
  displayScene2() ;
  
    if(counter == 3 && scene2Counter ==1) {
      image(textbox, width/2+200, height/2+200) ;
      textSize(18) ;
      text(" ", width/2+200, height/2+120) ;
      text(" ", width/2+200, height/2+140) ;
      text(" ", width/2+200, height/2+160) ;
      text("In the distance", width/2+200, height/2+180) ;
      text("you see your friends", width/2+200, height/2+200) ;
      text(" ", width/2+200, height/2+220) ;
      text(" ", width/2+200, height/2+240) ;
    } else if(counter == 3 && scene2Counter ==2) {
      image(textbox, width/2+200, height/2+200) ;
      textSize(18) ;
      text(" ", width/2+200, height/2+120) ;
      text(" ", width/2+200, height/2+140) ;
      text("However, as you come closer", width/2+200, height/2+160) ;
      text("you notice they are arguing", width/2+200, height/2+180) ;
      text("...", width/2+200, height/2+200) ;
      text(" ", width/2+200, height/2+220) ;
      text(" ", width/2+200, height/2+240) ;
    } else if(counter == 3 && scene2Counter ==3) {
      image(textbox, width/2+200, height/2+200) ;
      textSize(18) ;
      text(" ", width/2+200, height/2+120) ;
      text(" ", width/2+200, height/2+140) ;
      text("However, as you come closer", width/2+200, height/2+160) ;
      text("you notice they are arguing", width/2+200, height/2+180) ;
      text(" ", width/2+200, height/2+200) ;
      text("Hover over with your mouse to", width/2+200, height/2+220) ;
      text("hear their conversation", width/2+200, height/2+240) ;
 
        if(mouseX > 110 && mouseX < 200 && mouseY > 360 && mouseY < 450) {
        image(speechbubble_light, 130, 190) ;
        textSize(15) ;
        text("I said it", 130, 160) ;
        text("was a mistake!", 130, 180) ;
      } if(mouseX > 280 && mouseX < 350 && mouseY > 330 && mouseY < 400) {
        image(speechbubble_light, 320, 220) ; 
        textSize(15) ;
        text("That was", 320, 200) ;
        text("my chocolate!", 320, 220) ;
      }
    }else if(counter == 3 && scene2Counter ==4) {
      image(textbox, width/2+200, height/2+200) ;
      textSize(18) ;
      text(" ", width/2+200, height/2+120) ;
      text("It appears as if your", width/2+200, height/2+140) ;
      text("friend Hare, accidentally ate", width/2+200, height/2+160) ;
      text("Tortoise's chocolate.", width/2+200, height/2+180) ;
      text(" ", width/2+200, height/2+200) ;
      text("How will you respond?", width/2+200, height/2+220) ;
      text(" ", width/2+200, height/2+240) ;
    } else if(counter == 3 && scene2Counter ==5) {
      image(textbox, width/2+200, height/2+200) ;
      textSize(18) ;
      text(" ", width/2+200, height/2+120) ;
      text("It appears as if your", width/2+200, height/2+140) ;
      text("friend Hare, accidentally ate", width/2+200, height/2+160) ;
      text("Tortoise's chocolate.", width/2+200, height/2+180) ;
      text(" ", width/2+200, height/2+200) ;
      text("How will you respond?", width/2+200, height/2+220) ;
      text(" ", width/2+200, height/2+240) ;
      
    buttonImage() ;
    
    //text in answer boxes 
    textSize(15) ;
    text("I understand Tortoise, but", 180, 90) ; //L1
    text("Hare didn't mean to", 180, 110) ; //L1
    
    text("Hare, you should take", 180, 210) ; //L2
    text("responsibility and", 180, 230) ; //L2
    text("apologize to Tortoise", 180, 250) ; //L2
    
    text("It's just a chocolate", 180, 330) ; //L3
    text("bar lol!!!", 180, 350) ; //L3
    
    text("You guys should just", 540, 90) ; //R1
    text("make up! Friendship is", 540, 110) ; //R1
    text("important", 540, 130) ; //R1
    
    text("Your friendship is", 540, 210) ; //R2
    text("doomed if you're", 540, 230) ; //R2
    text("fighting over this", 540, 250) ; //R2
    
    text("Let's calm down and", 540, 330) ; //R3
    text("just talk this out", 540, 350) ; //R3 
    } else if(counter == 3 && scene2Counter == 6) {
      counter = 4 ;
    }
    
    if(counter == 3) {
    displayTransition2() ;
  }
     
}

void uploadScene2() {
  for(int i = 0; i<12; i++) {
    scene2[i] = loadImage("scene2_" + str(i+1) + ".png") ;
  }
}

void displayScene2() {
  if(scene2_gifCount < scene2.length && counter == 3) {
    image(scene2[scene2_gifCount], width/2, height/2) ;
    scene2_gifCount ++ ; 
  } else if(scene2_gifCount == scene2.length && counter == 3) {
    image(scene2[0], width/2, height/2) ;
    scene2_gifCount = 0 ;
  }
}

void Scene2Counter() {
  if(counter == 3 && scene2Counter<5){
    scene2Counter++;
  } else if( counter == 3 && scene2Counter>=5) {
    if((mouseX > 26 && mouseX < 328 && mouseY > 55 && mouseY < 139) || (mouseX > 26 && mouseX < 328 && mouseY > 94 && mouseY < 258) ||(mouseX > 26 && mouseX < 328 && mouseY > 295 && mouseY < 380) ||(mouseX > 385 && mouseX < 689 && mouseY > 55 && mouseY < 139) ||(mouseX > 385 && mouseX < 689 && mouseY > 94 && mouseY < 258) ||(mouseX > 385 && mouseX < 689 && mouseY > 295 && mouseY < 380)) {
      scene2Counter++;
    }
  }
  
  answer2() ;
}

void scene3() {
  displayScene3() ;
  
  if(counter == 4 && scene3Counter ==1) {
      image(textbox, width/2-200, height/2+200) ;
      textSize(18) ;
      text(" ", width/2-200, height/2+120) ;
      text(" ", width/2-200, height/2+140) ;
      text(" ", width/2-200, height/2+160) ;
      text("A messenger bird", width/2-200, height/2+180) ;
      text("has arrived!", width/2-200, height/2+200) ;
      text(" ", width/2-200, height/2+220) ;
      text(" ", width/2-200, height/2+240) ;
    } else if(counter == 4 && scene3Counter ==2) {
      image(textbox, width/2-200, height/2+200) ;
      textSize(18) ;
      text(" ", width/2-200, height/2+120) ;
      text(" ", width/2-200, height/2+140) ;
      text("Oh yes! This event", width/2-200, height/2+160) ;
      text("I completely forgot", width/2-200, height/2+180) ;
      text("about", width/2-200, height/2+200) ;
      text(" ", width/2-200, height/2+220) ;
      text(" ", width/2-200, height/2+240) ;
    } else if(counter == 4 && scene3Counter ==3) {
      image(textbox, width/2-200, height/2+200) ;
      textSize(18) ;
      text("You had RSVPed to this party", width/2-200, height/2+120) ;
      text("you had not wanted to go to", width/2-200, height/2+140) ;
      text(" ", width/2-200, height/2+160) ;
      text("But everyone expects you", width/2-200, height/2+180) ;
      text("to be there", width/2-200, height/2+200) ;
      text(" ", width/2-200, height/2+220) ;
      text("What will you do?", width/2-200, height/2+240) ;
    } else if(counter == 4 && scene3Counter ==4) {
      image(textbox, width/2-200, height/2+200) ;
      textSize(18) ;
      text("You had RSVPed to this party", width/2-200, height/2+120) ;
      text("you had not wanted to go to", width/2-200, height/2+140) ;
      text(" ", width/2-200, height/2+160) ;
      text("But everyone expects you", width/2-200, height/2+180) ;
      text("to be there", width/2-200, height/2+200) ;
      text(" ", width/2-200, height/2+220) ;
      text("What will you do?", width/2-200, height/2+240) ;
      
    buttonImage() ;
    
    //text in answer boxes 
    textSize(15) ;
    text("I'll make it an enjoyable time.", 180, 90) ; //L1
    text("If it sucks I can leave.", 180, 110) ; //L1
    
    text("I should keep my word", 180, 210) ; //L2
    text("and go", 180, 230) ; //L2
    text("", 180, 250) ; //L2
    
    text("I shouldn't disappoint", 180, 330) ; //L3
    text("my friends and go", 180, 350) ; //L3
    
    text("It's not like anyone will", 540, 90) ; //R1
    text("notice, so not go", 540, 110) ; //R1
    text("", 540, 130) ; //R1
    
    text("Parties are vapid", 540, 210) ; //R2
    text("It doesn't really matter", 540, 230) ; //R2
    text("whether I go or not", 540, 250) ; //R2
    
    text("I'd feel happier not", 540, 330) ; //R3
    text("going, so yeah", 540, 350) ; //R3 
    } else if(counter == 4 && scene3Counter ==5) {
      counter = 5;
    }
    
    if(counter == 4) {
      displayTransition2() ;
  }
}

void uploadScene3() {
  for(int i = 0; i<6;i++) {
    scene3[i] = loadImage("scene3_" + str(i+1) + ".png") ;
  }
}

void displayScene3() {
  if(scene3_gifCount < scene3.length && counter == 4) {
    image(scene3[scene3_gifCount], width/2, height/2) ;
    scene3_gifCount ++ ; 
  } else if(scene3_gifCount == scene3.length && counter == 4) {
    image(scene3[0], width/2, height/2) ;
    scene3_gifCount = 0 ;
  }
}

void Scene3Counter() {
  if(counter == 4 && scene3Counter < 4){
    scene3Counter++;
  } else if( counter == 4 && scene3Counter >= 4) {
    if ((mouseX > 26 && mouseX < 328 && mouseY > 55 && mouseY < 139) || (mouseX > 26 && mouseX < 328 && mouseY > 94 && mouseY < 258) ||(mouseX > 26 && mouseX < 328 && mouseY > 295 && mouseY < 380) ||(mouseX > 385 && mouseX < 689 && mouseY > 55 && mouseY < 139) ||(mouseX > 385 && mouseX < 689 && mouseY > 94 && mouseY < 258) ||(mouseX > 385 && mouseX < 689 && mouseY > 295 && mouseY < 380)){
      scene3Counter++;
    }
  } 
  
  answer3() ;
}

void scene4() {
  displayScene4();
  
  if(counter == 5 && scene4Counter ==1) {
      image(textbox, width/2-200, height/2+200) ;
      textSize(18) ;
      text(" ", width/2-200, height/2+120) ;
      text(" ", width/2-200, height/2+140) ;
      text("Oh no!!!", width/2-200, height/2+160) ;
      text("I forgot to do my homework", width/2-200, height/2+180) ;
      text(" ", width/2-200, height/2+200) ;
      text(" ", width/2-200, height/2+220) ;
      text(" ", width/2-200, height/2+240) ;
    } else if(counter == 5 && scene4Counter ==2) {
      image(textbox, width/2-200, height/2+200) ;
      textSize(18) ;
      text(" ", width/2-200, height/2+120) ;
      text(" ", width/2-200, height/2+140) ;
      text("You realize you forgot to do", width/2-200, height/2+160) ;
      text("your homework as you walk", width/2-200, height/2+180) ;
      text("into class", width/2-200, height/2+200) ;
      text("What will you do?", width/2-200, height/2+220) ;
      text(" ", width/2-200, height/2+240) ;
    } else if(counter == 5 && scene4Counter ==3) {
      image(textbox, width/2-200, height/2+200) ;
      textSize(18) ;
      text(" ", width/2-200, height/2+120) ;
      text(" ", width/2-200, height/2+140) ;
      text("You realize you forgot to do", width/2-200, height/2+160) ;
      text("your homework as you walk", width/2-200, height/2+180) ;
      text("into class", width/2-200, height/2+200) ;
      text("What will you do?", width/2-200, height/2+220) ;
      text(" ", width/2-200, height/2+240) ;
  
    buttonImage() ;
    
    //text in answer boxes 
    textSize(15) ;
    text("I'll own up to it", 180, 90) ; //L1
    text("and do it next time!", 180, 110) ; //L1
    
    text("I'll do whatever", 180, 210) ; //L2
    text("benefits me now, even", 180, 230) ; //L2
    text("copying a classmate's", 180, 250) ; //L2
    
    text("I can finish it!", 180, 330) ; //L3
    text("Give me five minutes", 180, 350) ; //L3
    
    text("Whatever, I would have", 540, 90) ; //R1
    text("gotten a bad grade", 540, 110) ; //R1
    text("anyways", 540, 130) ; //R1
    
    text("I hope no one thinks", 540, 210) ; //R2
    text("I'm incompetent", 540, 230) ; //R2
    text("I'll try to finish now", 540, 250) ; //R2
    
    text("Just one homework", 540, 330) ; //R3
    text("in the grand scheme", 540, 350) ; //R3 
    text("of things", 540, 370) ; //R3 
    } else if(counter == 5 && scene4Counter ==4) {
      counter = 6;
    }
    
    if(counter == 5) {
    displayTransition2() ;
  }
}

void uploadScene4() {
  for(int i = 0; i<8; i++) {
    scene4[i] = loadImage("scene4_" + str(i+1) + ".png") ;
  }
}

void displayScene4() {
  if(scene4_gifCount < scene4.length && counter == 5) {
    image(scene4[scene4_gifCount], width/2, height/2) ;
    scene4_gifCount ++ ; 
  } else if(scene4_gifCount == scene4.length && counter == 5) {
    image(scene4[0], width/2, height/2) ;
    scene4_gifCount = 0 ;
  }
}

void Scene4Counter() {
  if(counter == 5 && scene4Counter < 3){
    scene4Counter++;
  }  else if( counter == 5 && scene4Counter >= 3) {
    if ((mouseX > 26 && mouseX < 328 && mouseY > 55 && mouseY < 139) || (mouseX > 26 && mouseX < 328 && mouseY > 94 && mouseY < 258) ||(mouseX > 26 && mouseX < 328 && mouseY > 295 && mouseY < 380) ||(mouseX > 385 && mouseX < 689 && mouseY > 55 && mouseY < 139) ||(mouseX > 385 && mouseX < 689 && mouseY > 94 && mouseY < 258) ||(mouseX > 385 && mouseX < 689 && mouseY > 295 && mouseY < 380)){
      scene4Counter++;
    }
  }
  answer4() ;
}

void scene5() {
  displayScene5();
  
  if(counter == 6 && scene5Counter == 1) {
    image(textbox, width/2+200, height/2+200) ;
    textSize(18) ;
    text(" ", width/2+200, height/2+120) ;
    text(" ", width/2+200, height/2+140) ;
    text(" ", width/2+200, height/2+160) ;
    text("You are talking with your friend", width/2+200, height/2+180) ;
    text("...", width/2+200, height/2+200) ;
    text(" ", width/2+200, height/2+220) ;
    text(" ", width/2+200, height/2+240) ;
  } else if( counter == 6 && scene5Counter == 2) {
    image(textbox, width/2+200, height/2+200) ;
    textSize(18) ;
    text(" ", width/2+200, height/2+120) ;
    text(" ", width/2+200, height/2+140) ;
    text(" ", width/2+200, height/2+160) ;
    text("You are talking with your friend", width/2+200, height/2+180) ;
    text("hover your mouse above", width/2+200, height/2+200) ;
    text("Tortoise to hear", width/2+200, height/2+220) ;
    text(" ", width/2+200, height/2+240) ;
    
        if(mouseX > 280 && mouseX < 350 && mouseY > 370 && mouseY < 450) {
        image(speechbubble_light, 320, 220) ; 
        textSize(15) ;
        text("I'm very sad...", 320, 200) ;
        text("I was broken up", 320, 220) ;
        text("with...", 320, 240) ;
      }
  } else if( counter == 6 && scene5Counter == 3) {
    image(textbox, width/2+200, height/2+200) ;
    textSize(18) ;
    text(" ", width/2+200, height/2+120) ;
    text(" ", width/2+200, height/2+140) ;
    text("Evidently, your friend is going", width/2+200, height/2+160) ;
    text("through a terrible break up.", width/2+200, height/2+180) ;
    text("", width/2+200, height/2+200) ;
    text("What advice can you give them?", width/2+200, height/2+220) ;
    text(" ", width/2+200, height/2+240) ;
  } else if( counter == 6 && scene5Counter == 4) {
    image(textbox, width/2+200, height/2+200) ;
    textSize(18) ;
    text(" ", width/2+200, height/2+120) ;
    text(" ", width/2+200, height/2+140) ;
    text("Evidently, your friend is going", width/2+200, height/2+160) ;
    text("through a terrible break up.", width/2+200, height/2+180) ;
    text("", width/2+200, height/2+200) ;
    text("What advice can you give them?", width/2+200, height/2+220) ;
    text(" ", width/2+200, height/2+240) ; 
    
    buttonImage() ;
    
    //text in answer boxes 
    textSize(15) ;
    text("There's plety of fish", 180, 90) ; //L1
    text("in the sea!", 180, 110) ; //L1
    text("Let's enjoy the moment!", 180, 130) ; //L1
    
    text("You can let this", 180, 210) ; //L2
    text("situation break you", 180, 230) ; //L2
    text("or make you", 180, 250) ; //L2
    
    text("Try to be calm and", 180, 330) ; //L3
    text("evaluate yourself", 180, 350) ; //L3
    text("internally", 180, 370) ; //L3
    
    text("I'm proud of you for", 540, 90) ; //R1
    text("going through this.", 540, 110) ; //R1
    text("I'll here if you need it", 540, 130) ; //R1
    
    text("Well", 540, 210) ; //R2
    text("they suck!", 540, 230) ; //R2
    text(" ", 540, 250) ; //R2
    
    text("It's okay, relationships", 540, 330) ; //R3
    text("are fleeting happy", 540, 350) ; //R3 
    text("chemicals anyways", 540, 370) ; //R3 
    } else if( counter == 6 && scene5Counter == 5) {
      counter = 7;
    }
    
    if(counter == 6) {
    displayTransition2() ;
  }
  
}

void uploadScene5() {
  for(int i = 0; i<12; i++) {
    scene5[i] = loadImage("scene5_" + str(i+1) + ".png") ;
  }
}

void displayScene5() {
  if(scene5_gifCount < scene5.length && counter == 6) {
    image(scene5[scene5_gifCount], width/2, height/2) ;
    scene5_gifCount ++ ; 
  } else if(scene5_gifCount == scene5.length && counter == 6) {
    image(scene5[0], width/2, height/2) ;
    scene5_gifCount = 0 ;
  }
}

void Scene5Counter() {
  if(counter == 6 && scene5Counter < 4){
    scene5Counter++;
  } else if( counter == 6 && scene5Counter >= 4) {
    if ((mouseX > 26 && mouseX < 328 && mouseY > 55 && mouseY < 139) || (mouseX > 26 && mouseX < 328 && mouseY > 94 && mouseY < 258) ||(mouseX > 26 && mouseX < 328 && mouseY > 295 && mouseY < 380) ||(mouseX > 385 && mouseX < 689 && mouseY > 55 && mouseY < 139) ||(mouseX > 385 && mouseX < 689 && mouseY > 94 && mouseY < 258) ||(mouseX > 385 && mouseX < 689 && mouseY > 295 && mouseY < 380)){
      scene5Counter++;
    }
  }
  
  answer5();
}

void scene6() {
  if( counter == 7 ) {
    displayScene6() ;
  }
  
  if( counter == 7 && scene6Counter == 1) {
    image(textbox, width/2+200, height/2+200) ;
    textSize(18) ;
    text(" ", width/2+200, height/2+120) ;
    text(" ", width/2+200, height/2+140) ;
    text(" ", width/2+200, height/2+160) ;
    text("You see a few", width/2+200, height/2+180) ;
    text("quotes in front", width/2+200, height/2+200) ;
    text("of you", width/2+200, height/2+220) ;
    text(" ", width/2+200, height/2+240) ;
  } else if( counter == 7 && scene6Counter == 2) {
    image(textbox, width/2+200, height/2+200) ;
    textSize(18) ;
    text(" ", width/2+200, height/2+120) ;
    text(" ", width/2+200, height/2+140) ;
    text(" ", width/2+200, height/2+160) ;
    text("Which quote do you", width/2+200, height/2+180) ;
    text("gravitate towards?", width/2+200, height/2+200) ;
    text(" ", width/2+200, height/2+220) ;
    text(" ", width/2+200, height/2+240) ;
  } else if( counter == 7 && scene6Counter == 3) {
    if(mouseX>330 && mouseX<520 && mouseY>140 && mouseY<240) {
      scene6[5].resize(810, 0) ;
    } else if(mouseX>575 && mouseX<665 && mouseY>140 && mouseY<365) {
      scene6[4].resize(810, 0) ;
    } else if(mouseX>525 && mouseX<685 && mouseY>395 && mouseY<530) {
      scene6[1].resize(810, 0) ;
    } else if(mouseX>335 && mouseX<470 && mouseY>280 && mouseY<530) {
      scene6[2].resize(810, 0) ;
    } else if(mouseX>120 && mouseX<270 && mouseY>380 && mouseY<530) {
      scene6[3].resize(810, 0) ;
    } else if(mouseX>120 && mouseX<270 && mouseY>140 && mouseY<400) {
      scene6[6].resize(810, 0) ;
    } else{
      scene6[1].resize(800, 0) ;
      scene6[2].resize(800, 0) ;
      scene6[3].resize(800, 0) ;
      scene6[4].resize(800, 0) ;
      scene6[5].resize(800, 0) ;
      scene6[6].resize(800, 0) ;
    }
  } else if( counter == 7 && scene6Counter == 4) {
    counter = 8 ;
  }
  
  if(counter == 7) {
    displayTransition2() ;
  }
}

void uploadScene6() {
  for(int i = 0; i <7; i++) {
    scene6[i] = loadImage("gif6_"+str(i+2)+".png") ;
  }
}

void displayScene6() {
  
  for(int i = 0; i <7; i++) {
    image(scene6[i], width/2, height/2) ;
  }
  
}

void Scene6Counter() {
  if(counter == 7 && scene6Counter <3){
    scene6Counter++;
  } else if( counter == 7 && scene6Counter >= 3) {
    if ((mouseX>330 && mouseX<520 && mouseY>140 && mouseY<240) ||(mouseX>575 && mouseX<665 && mouseY>140 && mouseY<365) ||(mouseX>525 && mouseX<685 && mouseY>395 && mouseY<530) ||(mouseX>335 && mouseX<470 && mouseY>280 && mouseY<530) ||(mouseX>120 && mouseX<270 && mouseY>380 && mouseY<530) ||(mouseX>120 && mouseX<270 && mouseY>140 && mouseY<400) ){
      scene6Counter++;
    }
  }
  
  answer6() ;
}

void scene7() {
  displayScene7() ;
  
  if(counter == 8 && scene7Counter == 1) {
    image(textbox, width/2+200, height/2+200) ;
    textSize(18) ;
    text(" ", width/2+200, height/2+120) ;
    text(" ", width/2+200, height/2+140) ;
    text(" ", width/2+200, height/2+160) ;
    text("You are enjoying the night life", width/2+200, height/2+180) ;
    text("...", width/2+200, height/2+200) ;
    text(" ", width/2+200, height/2+220) ;
    text(" ", width/2+200, height/2+240) ;
  } else if(counter == 8 && scene7Counter == 2) {
    image(textbox, width/2+200, height/2+200) ;
    textSize(18) ;
    text(" ", width/2+200, height/2+120) ;
    text(" ", width/2+200, height/2+140) ;
    text("However, in the distance", width/2+200, height/2+160) ;
    text("you see some suspicious", width/2+200, height/2+180) ;
    text("characters", width/2+200, height/2+200) ;
    text("...", width/2+200, height/2+220) ;
    text(" ", width/2+200, height/2+240) ;
  } else if(counter == 8 && scene7Counter == 3) {
    image(textbox, width/2+200, height/2+200) ;
    textSize(18) ;
    text(" ", width/2+200, height/2+120) ;
    text(" ", width/2+200, height/2+140) ;
    text("It appears they are using", width/2+200, height/2+160) ;
    text("outlawed potions!", width/2+200, height/2+180) ;
    text("", width/2+200, height/2+200) ;
    text("...", width/2+200, height/2+220) ;
    text(" ", width/2+200, height/2+240) ;
  } else if(counter == 8 && scene7Counter == 4) {
    image(textbox, width/2+200, height/2+200) ;
    textSize(18) ;
    text(" ", width/2+200, height/2+120) ;
    text(" ", width/2+200, height/2+140) ;
    text("It appears they are using", width/2+200, height/2+160) ;
    text("outlawed potions!", width/2+200, height/2+180) ;
    text("", width/2+200, height/2+200) ;
    text("What do you do?", width/2+200, height/2+220) ;
    text(" ", width/2+200, height/2+240) ;
  } else if(counter == 8 && scene7Counter == 5) {
    image(textbox, width/2+200, height/2+200) ;
    textSize(18) ;
    text(" ", width/2+200, height/2+120) ;
    text(" ", width/2+200, height/2+140) ;
    text("It appears they are using", width/2+200, height/2+160) ;
    text("outlawed potions!", width/2+200, height/2+180) ;
    text("", width/2+200, height/2+200) ;
    text("What do you do?", width/2+200, height/2+220) ;
    text(" ", width/2+200, height/2+240) ;
   
    buttonImage() ;
    
    //text in answer boxes 
    textSize(15) ;
    text("There a clear wrong", 180, 90) ; //L1
    text("in this situation,", 180, 110) ; //L1
    text("I'll do what is most upright!", 180, 130) ; //L1
    
    text("I will evaluate the", 180, 210) ; //L2
    text("situation to see", 180, 230) ; //L2
    text("what I should to do", 180, 250) ; //L2
    
    text("Let me make sure my", 180, 330) ; //L3
    text("friends are safe", 180, 350) ; //L3
    text("", 180, 370) ; //L3
    
    text("It looks kind of fun..", 540, 90) ; //R1
    text("Maybe I should join in", 540, 110) ; //R1
    text("with them?", 540, 130) ; //R1
    
    text("These dangerous things", 540, 210) ; //R2
    text("happen everyday", 540, 230) ; //R2
    text("so I will avoid", 540, 250) ; //R2
    
    text("It is not of any", 540, 330) ; //R3
    text("importance to me so", 540, 350) ; //R3 
    text("whatever", 540, 370) ; //R3 
    } else if(counter == 8 && scene7Counter == 6) {
      counter = 9 ;
    }
    
    if(counter == 8) {
    displayTransition2() ;
  }
}

void uploadScene7() {
  for(int i = 0; i <5; i++) {
    scene7[i] = loadImage("gif7_"+str(i+1)+".png") ;
  }
}

void displayScene7() {
  if(scene7_gifCount < scene7.length && counter == 8) {
    image(scene7[scene7_gifCount], width/2, height/2) ;
    scene7_gifCount ++ ; 
  } else if(scene7_gifCount == scene7.length && counter == 8) {
    image(scene7[0], width/2, height/2) ;
    scene7_gifCount = 0 ;
  }
}

void Scene7Counter() {
  if(counter == 8 && scene7Counter < 5){
    scene7Counter++;
  } else if( counter == 8 && scene7Counter >= 5) {
    if ((mouseX > 26 && mouseX < 328 && mouseY > 55 && mouseY < 139) || (mouseX > 26 && mouseX < 328 && mouseY > 94 && mouseY < 258) ||(mouseX > 26 && mouseX < 328 && mouseY > 295 && mouseY < 380) ||(mouseX > 385 && mouseX < 689 && mouseY > 55 && mouseY < 139) ||(mouseX > 385 && mouseX < 689 && mouseY > 94 && mouseY < 258) ||(mouseX > 385 && mouseX < 689 && mouseY > 295 && mouseY < 380)){
      scene7Counter++;
    }
  }
  
  answer7();
}

void scene8() {
  displayScene8() ;
  
  if(counter == 9 && scene8Counter == 1) {
    image(textbox, width/2-200, height/2+200) ;
    textSize(18) ;
    text(" ", width/2-200, height/2+120) ;
    text(" ", width/2-200, height/2+140) ;
    text(" ", width/2-200, height/2+160) ;
    text("You have just finished work", width/2-200, height/2+180) ;
    text("...", width/2-200, height/2+200) ;
    text(" ", width/2-200, height/2+220) ;
    text(" ", width/2-200, height/2+240) ;
  } else if(counter == 9 && scene8Counter == 2) {
    image(textbox, width/2-200, height/2+200) ;
    textSize(18) ;
    text(" ", width/2-200, height/2+120) ;
    text(" ", width/2-200, height/2+140) ;
    text(" ", width/2-200, height/2+160) ;
    text("Today was a difficult day", width/2-200, height/2+180) ;
    text("...", width/2-200, height/2+200) ;
    text(" ", width/2-200, height/2+220) ;
    text(" ", width/2-200, height/2+240) ;
  } else if(counter == 9 && scene8Counter == 3) {
    image(textbox, width/2-200, height/2+200) ;
    textSize(18) ;
    text(" ", width/2-200, height/2+120) ;
    text("You are going through a rough ", width/2-200, height/2+140) ;
    text("patch at work and find your", width/2-200, height/2+160) ;
    text("relationship with colleages", width/2-200, height/2+180) ;
    text("strained...", width/2-200, height/2+200) ;
    text(" ", width/2-200, height/2+220) ;
    text(" ", width/2-200, height/2+240) ;
  } else if(counter == 9 && scene8Counter == 4) {
    image(textbox, width/2-200, height/2+200) ;
    textSize(18) ;
    text(" ", width/2-200, height/2+120) ;
    text("You are going through a rough ", width/2-200, height/2+140) ;
    text("patch at work and find your", width/2-200, height/2+160) ;
    text("relationship with colleages", width/2-200, height/2+180) ;
    text("strained...", width/2-200, height/2+200) ;
    text(" ", width/2-200, height/2+220) ;
    text("What are your thoughts?", width/2-200, height/2+240) ;
  } else if(counter == 9 && scene8Counter == 5) {
    image(textbox, width/2-200, height/2+200) ;
    textSize(18) ;
    text(" ", width/2-200, height/2+120) ;
    text("You are going through a rough ", width/2-200, height/2+140) ;
    text("patch at work and find your", width/2-200, height/2+160) ;
    text("relationship with colleages", width/2-200, height/2+180) ;
    text("strained...", width/2-200, height/2+200) ;
    text(" ", width/2-200, height/2+220) ;
    text("What are your thoughts?", width/2-200, height/2+240) ;
    buttonImage() ;
    
    //text in answer boxes 
    textSize(15) ;
    text("The world is a", 180, 90) ; //L1
    text("hard place,", 180, 110) ; //L1
    text("", 180, 130) ; //L1
    
    text("I will brace myself", 180, 210) ; //L2
    text("for tomorrow and", 180, 230) ; //L2
    text("take it step by step", 180, 250) ; //L2
    
    text("Let's seek satisfaction", 180, 330) ; //L3
    text("and happiness elsewhere", 180, 350) ; //L3
    text("", 180, 370) ; //L3
    
    text("Work, life, material things", 540, 90) ; //R1
    text("They're all meaningless", 540, 110) ; //R1
    text("", 540, 130) ; //R1
    
    text("I need to work hard", 540, 210) ; //R2
    text("to support my loved ones", 540, 230) ; //R2
    text(" ", 540, 250) ; //R2
    
    text("Perhaps I could have", 540, 330) ; //R3
    text("done better, I'll", 540, 350) ; //R3 
    text("take responsiblity", 540, 370) ; //R3 
    }  else if(counter == 9 && scene8Counter == 6) {
      counter = 10 ;
    }
    if(counter == 9) {
    displayTransition2() ;
  }
  
}
    


void uploadScene8() {
   for(int i = 0; i <16; i++) {
    scene8[i] = loadImage("gif8_"+str(i+1)+".png") ;
  }
}

void displayScene8() {
  if(scene8_gifCount < scene8.length && counter == 9) {
    image(scene8[scene8_gifCount], width/2, height/2) ;
    scene8_gifCount ++ ; 
  } else if(scene8_gifCount == scene8.length && counter == 9) {
    image(scene8[0], width/2, height/2) ;
    scene8_gifCount = 0 ;
  }
}

void Scene8Counter() {
  if(counter == 9 && scene8Counter < 5){
    scene8Counter++;
  } else if( counter == 9 && scene8Counter >= 5) {
    if ((mouseX > 26 && mouseX < 328 && mouseY > 55 && mouseY < 139) || (mouseX > 26 && mouseX < 328 && mouseY > 94 && mouseY < 258) ||(mouseX > 26 && mouseX < 328 && mouseY > 295 && mouseY < 380) ||(mouseX > 385 && mouseX < 689 && mouseY > 55 && mouseY < 139) ||(mouseX > 385 && mouseX < 689 && mouseY > 94 && mouseY < 258) ||(mouseX > 385 && mouseX < 689 && mouseY > 295 && mouseY < 380)){
      scene8Counter++;
    }
  }
  
  answer8() ;
}

// ENDING SCENES

void resultLoading() {
  if(wizardCount < wizard.length && counter == 10 && wizardTextCounter2 < 2) {
    image(wizard[wizardCount], width/2+200, height/2+30) ;
    wizardCount ++ ; 
  } else if(wizardCount == wizard.length && counter == 10 && wizardTextCounter2 < 2) {
    image(wizard[0], width/2+200, height/2+30) ;
    wizardCount = 0 ;
  }
  
  if(counter == 10) {
    image(speechBubble, width/3-50, height/2) ;
  }
  
  if(counter == 10 && wizardTextCounter2  == 0) {
    fill(58, 50, 121) ;
    textSize(23) ;
    text( "We meet again", width/2-180, height/2-50) ;
    text( "young philosopher!", width/2-180, height/2-20) ;
    text( "", width/2-180, height/2+10) ;
  } else if(counter == 10 && wizardTextCounter2  == 1) {
    fill(58, 50, 121) ;
    textSize(23) ;
    text( "You have returned", width/2-180, height/2-50) ;
    text( "from your arduous", width/2-180, height/2-20) ;
    text( "journey you say?", width/2-180, height/2+10) ;
  } else if(counter == 10 && wizardTextCounter2  == 2) {
    fill(58, 50, 121) ;
    textSize(23) ;
    text( "Finally it", width/2-180, height/2-50) ;
    text( "is time", width/2-180, height/2-20) ;
    text( " ", width/2-180, height/2+10) ;
    
    image(wizard3, width/2+300, height/2+30) ;
  } else if(counter == 10 && wizardTextCounter2  == 3) {
    fill(58, 50, 121) ;
    textSize(23) ;
    text( "to see which", width/2-180, height/2-50) ;
    text( "school you are most", width/2-180, height/2-20) ;
    text( "inclined towards...", width/2-180, height/2+10) ;
    
    image(wizard3, width/2+300, height/2+30) ;
  } else if(counter == 10 && wizardTextCounter2  == 4) {
    counter = 11;
  } 
  
  if(counter == 10) {
    displayTransition1() ;
  }

}


void loadingPage() {
  if(loadingGifCounter < loadingGif.length && counter == 11) {
    image(loadingGif[loadingGifCounter], width/2, height/2) ;
    loadingGifCounter ++ ; 
  } else if(loadingGifCounter == loadingGif.length && counter == 11) {
    counter = 12;
  }
  
  if (counter == 11) {
    calculatorAdding() ;
    calculator() ;
  }
}

void uploadingLoadingPage() {
  for(int i = 0; i <12; i++) {
    loadingGif[i] = loadImage("loading1_"+str(i)+".png") ;
  }
}

void publishingResults() { //YAY
  if(counter == 12) {
    
    if(isNihilism == true) {
      image(resultPage[4], width/2, height/2) ;
      displayQuote() ;
    } else if( isPessimism == true) {
      image(resultPage[5], width/2, height/2) ;
      displayQuote() ;
    } else if( isConfucianism == true) {
      image(resultPage[2], width/2, height/2) ;
      displayQuote() ;
    } else if( isStoicism == true) {
      image(resultPage[3], width/2, height/2) ;
      displayQuote() ;
    } else if( isExistentialism == true) {
      image(resultPage[0], width/2, height/2) ;
      displayQuote() ;
    } else if( isHedonism == true) {
      image(resultPage[1], width/2, height/2) ;
      displayQuote() ;
    }
  }

}








/////////// LOGGING ANSWERS

void answer1() {
  if( counter == 2 && scene1Counter == 4) {
    //first question
    if(mouseX > 26 && mouseX < 328 && mouseY > 55 && mouseY < 139 && mousePressed) { //L1
      confucianism ++ ;
    } else if(mouseX > 26 && mouseX < 328 && mouseY > 94 && mouseY < 258 && mousePressed) { //L2
      pessimism ++ ;
    } else if(mouseX > 26 && mouseX < 328 && mouseY > 295 && mouseY < 380 && mousePressed) { //L3
      existentialism ++ ;
    } else if(mouseX > 385 && mouseX < 689 && mouseY > 55 && mouseY < 139 && mousePressed) { //R1
      hedonism ++ ;
    } else if(mouseX > 385 && mouseX < 689 && mouseY > 94 && mouseY < 258 && mousePressed) { //R2
      stoicism ++ ;
    } else if(mouseX > 385 && mouseX < 689 && mouseY > 295 && mouseY < 380 && mousePressed) { //R3
      nihilism ++ ;
    } }
}

void answer2() {
  if( counter == 3 && scene2Counter == 6) {
    //second question
    if(mouseX > 26 && mouseX < 328 && mouseY > 55 && mouseY < 139 && mousePressed) { //L1
      hedonism ++ ;
    } else if(mouseX > 26 && mouseX < 328 && mouseY > 94 && mouseY < 258 && mousePressed) { //L2
      existentialism ++ ;
    } else if(mouseX > 26 && mouseX < 328 && mouseY > 295 && mouseY < 380 && mousePressed) { //L3
      nihilism ++ ;
    } else if(mouseX > 385 && mouseX < 689 && mouseY > 55 && mouseY < 139 && mousePressed) { //R1
      confucianism ++ ;
    } else if(mouseX > 385 && mouseX < 689 && mouseY > 94 && mouseY < 258 && mousePressed) { //R2
      pessimism ++ ;
    } else if(mouseX > 385 && mouseX < 689 && mouseY > 295 && mouseY < 380 && mousePressed) { //R3
      stoicism ++ ;
    } }
}

void answer3() {
  if( counter == 4 && scene3Counter == 5) {
    //third question
    if(mouseX > 26 && mouseX < 328 && mouseY > 55 && mouseY < 139 && mousePressed) { //L1
      existentialism ++ ;
    } else if(mouseX > 26 && mouseX < 328 && mouseY > 94 && mouseY < 258 && mousePressed) { //L2
      stoicism ++ ;
    } else if(mouseX > 26 && mouseX < 328 && mouseY > 295 && mouseY < 380 && mousePressed ) { //L3
      confucianism ++ ;
    } else if(mouseX > 385 && mouseX < 689 && mouseY > 55 && mouseY < 139 && mousePressed) { //R1
      pessimism ++ ;
    } else if(mouseX > 385 && mouseX < 689 && mouseY > 94 && mouseY < 258 && mousePressed) { //R2
      nihilism ++ ;
    } else if(mouseX > 385 && mouseX < 689 && mouseY > 295 && mouseY < 380 && mousePressed) { //R3
      hedonism ++ ;
    } }
}

void answer4() {
  if( counter == 5 && scene4Counter == 4) {
    //fourth question
    if(mouseX > 26 && mouseX < 328 && mouseY > 55 && mouseY < 139 && mousePressed) { //L1
      stoicism ++ ;
    } else if(mouseX > 26 && mouseX < 328 && mouseY > 94 && mouseY < 258 && mousePressed) { //L2
      hedonism ++ ;
    } else if(mouseX > 26 && mouseX < 328 && mouseY > 295 && mouseY < 380 && mousePressed) { //L3
      existentialism ++ ;
    } else if(mouseX > 385 && mouseX < 689 && mouseY > 55 && mouseY < 129 && mousePressed) { //R1
      pessimism ++ ;
    } else if(mouseX > 385 && mouseX < 689 && mouseY > 94 && mouseY < 258 && mousePressed ) { //R2
      confucianism ++ ;
    } else if(mouseX > 385 && mouseX < 689 && mouseY > 295 && mouseY < 380 && mousePressed) { //R3
      nihilism ++ ;
    } }
}

void answer5() {
  if( counter == 6 && scene5Counter == 5) {
    //fifth question
    if(mouseX > 26 && mouseX < 328 && mouseY > 55 && mouseY < 139 && mousePressed) { //L1
      hedonism ++ ;
    } else if(mouseX > 26 && mouseX < 328 && mouseY > 94 && mouseY < 258 && mousePressed) { //L2
      existentialism ++ ;
    } else if(mouseX > 26 && mouseX < 328 && mouseY > 295 && mouseY < 380 && mousePressed) { //L3
      stoicism ++ ;
    } else if(mouseX > 385 && mouseX < 689 && mouseY > 55 && mouseY < 139 && mousePressed) { //R1
      confucianism ++ ;
    } else if(mouseX > 385 && mouseX < 689 && mouseY > 94 && mouseY < 258 && mousePressed) { //R2
      pessimism ++ ;
    } else if(mouseX > 385 && mouseX < 689 && mouseY > 295 && mouseY < 380 && mousePressed) { //R3
      nihilism ++ ;
    } } 
}

void answer6() {
  if( counter == 7 && scene6Counter == 4) {
    //six question
    if(mouseX>330 && mouseX<520 && mouseY>140 && mouseY<240 && mousePressed) {
      hedonism ++ ;
    } else if(mouseX>575 && mouseX<665 && mouseY>140 && mouseY<365 && mousePressed) {
      pessimism ++;
    } else if(mouseX>525 && mouseX<685 && mouseY>395 && mouseY<530 && mousePressed) {
      nihilism++ ;
    } else if(mouseX>335 && mouseX<470 && mouseY>280 && mouseY<530 && mousePressed) {
      existentialism++ ;
    } else if(mouseX>120 && mouseX<270 && mouseY>380 && mouseY<530 && mousePressed) {
      confucianism++ ;
    } else if(mouseX>120 && mouseX<270 && mouseY>140 && mouseY<400 && mousePressed) {
      stoicism++ ;
    }  }
}

void answer7() {
  if( counter == 8 && scene7Counter == 6) {
    //seven question
    if(mouseX > 26 && mouseX < 328 && mouseY > 55 && mouseY < 139 && mousePressed) { //L1
      stoicism ++ ;
    } else if(mouseX > 26 && mouseX < 328 && mouseY > 94 && mouseY < 258 && mousePressed) { //L2
      existentialism ++ ;
    } else if(mouseX > 26 && mouseX < 328 && mouseY > 295 && mouseY < 380 && mousePressed) { //L3
      confucianism ++ ;
    } else if(mouseX > 385 && mouseX < 689 && mouseY > 55 && mouseY < 139 && mousePressed) { //R1
      hedonism ++ ;
    } else if(mouseX > 385 && mouseX < 689 && mouseY > 94 && mouseY < 258 && mousePressed) { //R2
      pessimism ++ ;
    } else if(mouseX > 385 && mouseX < 689 && mouseY > 295 && mouseY < 380 && mousePressed) { //R3
      nihilism ++ ;
    } }
}

void answer8() {
   if( counter == 9 && scene8Counter == 6) {
    //eighth question
    if(mouseX > 26 && mouseX < 328 && mouseY > 55 && mouseY < 139 && mousePressed) { //L1
      pessimism ++ ;
    } else if(mouseX > 26 && mouseX < 328 && mouseY > 94 && mouseY < 258 && mousePressed) { //L2
      stoicism ++ ;
    } else if(mouseX > 26 && mouseX < 328 && mouseY > 295 && mouseY < 380 && mousePressed) { //L3
      hedonism ++ ;
    } else if(mouseX > 385 && mouseX < 689 && mouseY > 55 && mouseY < 139 && mousePressed) { //R1
      nihilism ++ ;
    } else if(mouseX > 385 && mouseX < 689 && mouseY > 94 && mouseY < 258 && mousePressed) { //R2
      confucianism ++ ;
    } else if(mouseX > 385 && mouseX < 689 && mouseY > 295 && mouseY < 380 && mousePressed) { //R3
      existentialism ++ ;
    } } 
}


void calculatorAdding() {
  calculator[0] = hedonism ;
  calculator[1] = confucianism ;
  calculator[2] = existentialism ;
  calculator[3] = stoicism ;
  calculator[4] = nihilism ;
  calculator[5] = pessimism ;
  
  unsorted_calculator[0] = hedonism ;
  unsorted_calculator[1] = confucianism ;
  unsorted_calculator[2] = existentialism ;
  unsorted_calculator[3] = stoicism ;
  unsorted_calculator[4] = nihilism ;
  unsorted_calculator[5] = pessimism ;
}

void calculator() {
  calculator = sort(calculator) ;
  
  
  
  
    if(calculator[5] > calculator[4]) {
  if (hedonism == calculator[5]) {
      println("hedonism!") ;
      isHedonism = true ;
    } else if (confucianism == calculator[5]) {
      println("confucianism!") ;
      isConfucianism = true;
    } else if (existentialism == calculator[5]) {
      println("existentialism!") ;
      isExistentialism = true;
    } else if (stoicism == calculator[5]) {
      println("stoicism!") ;
      isStoicism = true;
    } else if (nihilism == calculator[5]) {
      println("nihilism!") ;
      isNihilism = true;
    } else if (pessimism == calculator[5]) {
      println("pessimism!") ;
      isPessimism = true; 
    }} else if( calculator[5] == calculator[4]) {
      if(existentialism == calculator[5]) {
         println("most likely existentialism!") ;
        isExistentialism = true;
      } else if (stoicism == calculator[5] && existentialism != calculator[5]) {
        println("most likely stoicism!") ;
        isStoicism = true;
      } else if( pessimism == calculator[5]  && stoicism != calculator[5] && existentialism != calculator[5]) {
        println("most likely pessimism!") ;
        isPessimism = true; 
      } else if( nihilism == calculator[5] && pessimism != calculator[5]  && stoicism != calculator[5] && existentialism != calculator[5]) {
        println("most likely nihilism!") ;
        isNihilism = true; 
      } else if( hedonism == calculator[5] && nihilism != calculator[5] && pessimism != calculator[5]  && stoicism != calculator[5] && existentialism != calculator[5]) {
        println("most likely hedonism!") ;
        isHedonism = true; 
      } 
    }
    
}

void uploadResultPages() {
  for(int i = 0; i<6; i++) {
    resultPage[i] = loadImage("endPage_" + str(i+5) + ".png") ;
  }
}

void uploadTransitions() {
  for(int i = 0; i<12; i++) {
    transitionGif1[i] = loadImage("transition2_" + str(i+1) + ".png") ;
  }
  for(int i = 0; i<12; i++) {
    transitionGif2[i] = loadImage("transition3_" + str(i+1) + ".png") ;
  }
}

void displayTransition1() {
  if(transition1[int(counter-1)] < transitionGif1.length) {
    image(transitionGif1[transition1[int(counter-1)]], width/2, height/2) ;
    transition1[int(counter-1)] ++ ; 
  } 
  
}

void displayTransition2() {
  if(transition2[int(counter-1)] < transitionGif2.length) {
    image(transitionGif2[transition2[int(counter-1)]], width/2, height/2) ;
    transition2[int(counter-1)] ++ ; 
  } 
}

//answerbox tint

void tintL1() {
  if(mouseX > 26 && mouseX < 328 && mouseY > 55 && mouseY < 139) { //L1
      tint(200, 255) ;
    } else {
      noTint() ;
    }
}

void tintL2() {
  if(mouseX > 26 && mouseX < 328 && mouseY > 94 && mouseY < 258) { //L2
     tint(200, 255) ;
    } else {
      noTint() ;
    }
}

void tintL3() {
  if(mouseX > 26 && mouseX < 328 && mouseY > 295 && mouseY < 380) { //L3
      tint(200, 255) ;
    } else {
      noTint() ;
    }
  
}

void tintR1() {
  if(mouseX > 385 && mouseX < 689 && mouseY > 55 && mouseY < 139) { //R1
      tint(200, 255) ;
    } else {
      noTint() ;
    }
}

void tintR2() {
  if(mouseX > 385 && mouseX < 689 && mouseY > 94 && mouseY < 258) { //R2
      tint(200, 255) ;
    } else {
      noTint() ;
    }
}

void tintR3() {
  if(mouseX > 385 && mouseX < 689 && mouseY > 295 && mouseY < 380) { //R3
      tint(200, 255) ;
    } else {
      noTint() ;
    }
}

void buttonImage() {
    
    tintL1() ;
    image(answerbox, 180, 100) ; //L1
    tintL2() ;
    image(answerbox, 180, 220) ; //L2
    tintL3() ;
    image(answerbox, 180, 340) ; //L3
    tintR1() ;
    image(answerbox, 540, 100) ; //R1
    tintR2() ;
    image(answerbox, 540, 220) ; //R2
    tintR3() ;
    image(answerbox, 540, 340) ; //R3
    
    noTint() ;
}

void uploadingQuote() {
  for(int i = 0; i <18; i++) {
    quote[i] = loadImage("quote_" + str(i+1) + ".png") ;
  }
}

void displayQuote() {
  
  if(isExistentialism == true) {
    if(mouseX> 178&& mouseX<260 && mouseY> 182 && mouseY<640) { // circle 1
    image(quote[1], width/2, height/2) ; //nietzsche
  } else if(mouseX> 350&& mouseX<450 && mouseY> 182 && mouseY<640) { //circle 2
    image(quote[0], width/2, height/2) ; //jean-paul
  } else if(mouseX> 510&& mouseX<620 && mouseY> 182 && mouseY<640) { //circle 3
    image(quote[2], width/2, height/2) ; //heidegger
  }}
  
  if(isHedonism == true) {
    if(mouseX> 178&& mouseX<260 && mouseY> 182 && mouseY<640) { // circle 1
    image(quote[3], width/2, height/2) ; //JSM
  } else if(mouseX> 350&& mouseX<450 && mouseY> 182 && mouseY<640) { //circle 2
    image(quote[5], width/2, height/2) ; //bentham
  } else if(mouseX> 510&& mouseX<620 && mouseY> 182 && mouseY<640) { //circle 3
    image(quote[4], width/2, height/2) ; //aristippus
  }}
  
  if(isConfucianism == true) {
    if(mouseX> 178&& mouseX<260 && mouseY> 182 && mouseY<640) { // circle 1
    image(quote[8], width/2, height/2) ; //confucius
  } else if(mouseX> 350&& mouseX<450 && mouseY> 182 && mouseY<640) { //circle 2
    image(quote[7], width/2, height/2) ; //mencius
  } else if(mouseX> 510&& mouseX<620 && mouseY> 182 && mouseY<640) { //circle 3
    image(quote[6], width/2, height/2) ; //xun zi
  }}
  
   if(isStoicism == true) {
    if(mouseX> 178&& mouseX<260 && mouseY> 182 && mouseY<640) { // circle 1
    image(quote[10], width/2, height/2) ; //seneca
  } else if(mouseX> 350&& mouseX<450 && mouseY> 182 && mouseY<640) { //circle 2
    image(quote[9], width/2, height/2) ; //zeno
  } else if(mouseX> 510&& mouseX<620 && mouseY> 182 && mouseY<640) { //circle 3
    image(quote[11], width/2, height/2) ; //epictetus
  }}
  
    if(isNihilism == true) {
    if(mouseX> 178&& mouseX<260 && mouseY> 182 && mouseY<640) { // circle 1
    image(quote[12], width/2, height/2) ; //nietzche
  } else if(mouseX> 350&& mouseX<450 && mouseY> 182 && mouseY<640) { //circle 2
    image(quote[14], width/2, height/2) ; //dmitri pisarew
  } else if(mouseX> 510&& mouseX<620 && mouseY> 182 && mouseY<640) { //circle 3
    image(quote[13], width/2, height/2) ; //chernyshevsky
  }}
  
    if(isPessimism == true) {
    if(mouseX> 178&& mouseX<260 && mouseY> 182 && mouseY<640) { // circle 1
    image(quote[16], width/2, height/2) ; //schopenhauer
  } else if(mouseX> 350&& mouseX<450 && mouseY> 182 && mouseY<640) { //circle 2
    image(quote[15], width/2, height/2) ; //voltaire
  } else if(mouseX> 510&& mouseX<620 && mouseY> 182 && mouseY<640) { //circle 3
    image(quote[17], width/2, height/2) ; //albertcamus
  }}
  
}

void CTA(){
  
  if(frameCount%10 > 5) {
    isOn = true ;
  } else {
    isOn = false ;
  }
  
  if (isOn == true) {
    fill(100) ;
    textSize(18) ;
    text("click to continue", 150, 670) ;
  }
  
}
