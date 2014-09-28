
//ZOIDBERG CLASS LIBRARY
void setup() {
	
}

void draw() {
	
}

//GLOBAL VARS, NEEDED TO LOAD ZOIDBERG IMAGES
ArrayList<PImage> woopwoop; //Array to hold Zoidberg's wooping images
ArrayList<Zoidberg> zoidbergs; 

class Zoidberg{
	PVector location;
	int woopState; //Used to animate Zoidberg and make him woop

	boolean onScreen = true; //True if Zoidberg is on screen


	//Zoidberg constructor
	Zoidberg(){

	}

	//Used to call woopwopp() and update()
	runZoidberg(){
		update();
		woopwoop();
	}

	//Get Zoidberg to go woopwoop. i.e displays zoidberg & keeps animation going
	woopwoop(){

	}

	//Update position of Zoidberg on the screen
	update(){

	}
}