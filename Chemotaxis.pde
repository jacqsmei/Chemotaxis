Bacteria uwu, owo; //declare bacteria variables here   
void setup() {
	size(500, 500);
	background(0);
	colorMode(HSB);
//initialize bacteria variables here 
	uwu = new Bacteria();  
	owo = new Bacteria();
}   
void draw() {    
	//move and show the bacteria  
	uwu.show();
	owo.show();
	uwu.walk();
	owo.walk();
}  
void mousePressed() {
	background(0);
	redraw();
}
class Bacteria    
{     
	//lots of java!
	int myX, myY;
	int myHue;
	Bacteria () {
		myX = 250;
		myY = 250;
		setHue();
	}
	void setHue() {
 		myHue = (int) (Math.random() * 256);
 	}
 	void show() {
 		fill(myHue, 255, 255, 10);
 		stroke(myHue, 255, 255, 10);
 		ellipse(myX, myY, 25, 25);
 	}
 	void walk() {
 		myX = myX + (int) (Math.random() * 7) - 3;
 		myY = myY + (int) (Math.random() * 7) - 3;
 		setHue();
 		if (myX>500) {
 			myX = 0;
 		}
 		if (myX<0) {
 			myX = 500;
 		}
 		if (myY>500) {
 			myY = 0;
 		}
 		if (myY<0) {
 			myY = 500;
 		}
 	}
}  
