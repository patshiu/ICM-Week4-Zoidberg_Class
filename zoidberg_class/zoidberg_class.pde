
//ZOIDBERG CLASS LIBRARY

//GLOBAL VARS, NEEDED TO LOAD ZOIDBERG IMAGES
PImage[] woopwoop; //Array to hold Zoidberg's wooping images
ArrayList<Zoidberg> zoidbergs; //This ArrayList holds the Zoidberg objects you will create
int ANIMATION_FRAMES = 21; //This is the total number of images in Zoidberg's animation 

void setup() {
	setupImage();

}

void draw() {
	
}




//USE THIS FUNCITON TO ADD A NEW Zoidberg TO THE zoidbergs ARRAY
void birthZoidberg(){
	zoidbergs.add(new Zoidberg()); //Add a new Zoidberg object to the array
	println("We now have "+zoidbergs.size()+" Zoidbergs in the house."); //Prints out total number of Zoidberg objects in array
}

//SETUP HELPERS 
//THIS LOADS ALL THE IMAGES USED BY THE Zoidberg CLASS
void setupImages(){
	woopwoop = new PImage[ANIMATION_FRAMES-1]; //Set up woopwoop array to the number of animation frames
	for (int i = 0; i < ANIMATION_FRAMES; i++){ //Load images into array
		woopwoop[i] = loadImage(i+".gif");
	}
}	

//DEFINITION OF Zoidberg CLASS
class Zoidberg{
	PVector location;
	int woopState; //Used to animate Zoidberg and make him woop

	boolean onScreen = true; //True if Zoidberg is on screen


	//Zoidberg constructor
	//Takes 2 arguments which are the coordinates where zoidberg will appear
	Zoidberg(float locX, float locY){
		//Sets Zoidberg's woop state to zero, start of the animation
		woopState = 0; 
		//Set Zoidberg's location to the coordinates specified
		location.x = locX; 
		location.y = locY;

	}

	//Used to call woopwopp() and update()
	runZoidberg(){
		update();
		woopwoop();
	}

	//Get Zoidberg to go woopwoop. i.e displays zoidberg & keeps animation going
	woopwoop(){
		//Displays next frame of Zoidberg in the correct location 

		//Removes Zoidberg object from array if he is off screen. 
	}

	//Update position of Zoidberg on the screen
	update(){
		//Updates the location of Zoidberg since he walks sideways

		//Checks if Zoidberg is off screen, set onScreen = false if he is. 
	}

}