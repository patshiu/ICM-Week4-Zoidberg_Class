
//ZOIDBERG CLASS LIBRARY

//GLOBAL VARS, NEEDED TO LOAD ZOIDBERG IMAGES
PImage[] woopwoop; //Array to hold Zoidberg's wooping images
ArrayList<Zoidberg> zoidbergs; //This ArrayList holds the Zoidberg objects you will create
int ANIMATION_FRAMES = 21; //This is the total number of images in Zoidberg's animation 
int frameNo = 0; 

void setup() {
	setupImages();
	size(1000, 1000);	

	//Set up zoidbergs arraylist
	setupZoidbergsArray();
}

void draw() {

	animateAllZoidbergs();

}


//- - - - - - - - - - - - - - - 
//RUN THESE IN LOOP()
//- - - - - - - - - - - - - - - 

//THIS SETS UP THE ARRAYLIST THAT HOLDS ALL THE Zoidberg OBJECTS YOU WILL CREATE, RUN IT IN LOOP()
void setupZoidbergsArray() {
	zoidbergs = new ArrayList<Zoidberg>(); //Use Arraylist instead of array so you can add/remove elements dynamically
}


//USE THIS FUNCITON TO ADD A NEW Zoidberg TO THE zoidbergs ARRAY
void birthZoidberg(float locX, float locY){
	zoidbergs.add(new Zoidberg(locX, locY)); //Add a new Zoidberg object to the array
	println("We now have "+zoidbergs.size()+" Zoidbergs in the house."); //Prints out total number of Zoidberg objects in array
}

//CALL THIS FUNCTION IN draw() TO ANIMATE THE Zoidberg OBJECTS IN THE zoidbergs ARRAY
void animateAllZoidbergs(){
	for (int i = 0; i < zoidbergs.size(); i++){
		Zoidberg focus = zoidbergs.get(i); //The Zoidberg object we are currently getting to update
		focus.runZoidberg(); //Make this Zoidberg object go woopwoop 
		
		//Removes this Zoidberg object from array if he is off screen.
		if (focus.onScreen == false){
			zoidbergs.remove(i);
		}
	}
}



//- - - - - - - - - - - - - - - 
//SETUP HELPERS - RUN THESE IN SETUP()
//- - - - - - - - - - - - - - - 
//THIS LOADS ALL THE IMAGES USED BY THE Zoidberg CLASS, RUN IT IN SETUP()
void setupImages(){
	woopwoop = new PImage[ANIMATION_FRAMES]; //Set up woopwoop array to the number of animation frames
	for (int i = 0; i < ANIMATION_FRAMES; i++){ //Load images into array
		woopwoop[i] = loadImage("img/"+i+".png");
	}
}	


//- - - - - - - - - - - - - - - 
//FOR DEMO ONLY - RUN birthZoidberg EVERYTIME MOUSE IS CLICKED
//- - - - - - - - - - - - - - - 
void mousePressed(){
	birthZoidberg(mouseX, mouseY);
}



//- - - - - - - - - - - - - - - 
//DEFINITION OF Zoidberg CLASS
//- - - - - - - - - - - - - - - 
class Zoidberg{
	PVector location;
	int woopState; //Used to animate Zoidberg and make him woop
	int timer; //This allows us to update the Zoidberg image every time draw() has run X number of times
	boolean onScreen; //True if Zoidberg is on screen


	//Zoidberg constructor
	//Takes 2 arguments which are the coordinates where zoidberg will appear
	Zoidberg(float locX, float locY){
		//Sets Zoidberg's woop state to zero, start of the animation
		woopState = 0; 
		//Set timer to 3 to make Zoidberg image update every time draw() has run 3 times
		timer = 3; 
		location = new PVector();
		onScreen = true; 

		//Set Zoidberg's location to the coordinates specified
		location.x = locX; 
		location.y = locY;

	}

	//Used to call woopwopp() and update()
	void runZoidberg(){
		update();
		woopwoop();
	}

	//Get Zoidberg to go woopwoop. i.e displays zoidberg & keeps animation going
	void woopwoop(){
		//Displays next frame of Zoidberg in the correct location 
		pushMatrix();
		translate(location.x, location.y); 
		image(woopwoop[woopState], -woopwoop[0].width/2, -woopwoop[0].height/2); //Draw frame, using MouseX & Mouse Y as center point. 
		popMatrix();
	}

	//Update position of Zoidberg on the screen
	void update(){
		
		//Update the countdown timer. Every time it hits 0, update Zoidberg's woopState
		if (timer == 0){
			//First, reset the timer so Zoidberg can continue woopwooping later
			timer = 3; 
			//Update the woopSate (frame number) of Zoidberg's animation
			if(woopState < ANIMATION_FRAMES-1){
				woopState++;
				println(woopState);
			}
			else {
				woopState = 0; 
			}
		}
		else if (timer > 0){
			timer--; 
			println(timer);
		}

		//Updates the location of Zoidberg since he walks sideways

		//Checks if Zoidberg is off screen, set onScreen = false if he is. 
		if (location.x < -woopwoop[0].width || location.x > width || location.y < -woopwoop[0].height || location.y > height){
			onScreen = false; 
		}
	}

}