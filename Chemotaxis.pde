Bacteria [] big, med;  //declare bacteria variables here   
void setup() {
	size(500, 500);
	background(0);
	colorMode(HSB);
//initialize bacteria variables here 
	big = new Bacteria[3];
	for (int i = 0; i<big.length; i++) {
		int randomR = (int) (Math.random() * 50);
		big[i] = new Bacteria(randomR);
	}
	med = new Bacteria[6];
	for (int j = 0; j<med.length; j++) {
		int randomR = (int) (Math.random() * 30);
		med[j] = new Bacteria(randomR);
	}
}   
void draw() {    
	//move and show the bacteria 
	fill(0,0,0,4);
  	stroke(0,0,0,4);
 	rect(0, 0, 500, 500);
	for (int i=0; i<big.length; i++) {
		big[i].show();
		big[i].walk();
	}
	for (int j=0; j<med.length; j++) {
		med[j].show();
		med[j].walk();
	}
}  

void mousePressed() {
	background(0);
	redraw();
}

class Bacteria    
{     
	//lots of java!
	int myX, myY, myR;
	int myHue, myOpacity;
	Bacteria (int r) {
		myX = 250;
		myY = 250;
		myR = r;
		setHue();
		setOpacity();
	}
	void setHue() {
 		myHue = (int) (Math.random() * 256);
 	}
 	void setOpacity() {
 		myOpacity = (int) (Math.random() * 40);
 	}
 	void show() {
 		fill(myHue, 255, 255, myOpacity);
 		stroke(myHue, 255, 255, myOpacity);
 		ellipse(myX, myY, myR, myR);
 	}
 	void walk() {
 		if (mouseX > myX) {
 			myX = myX + (int) (Math.random() * 5) - 1;
 		} else {
 			myX = myX + (int) (Math.random() * 5) - 4;
 		}
 		if (mouseY > myY) {
 			myY = myY + (int) (Math.random() * 5) - 1;
 		} else {
 			myY = myY + (int) (Math.random() * 5) - 4;
 		}
 		setHue();
 	}
}  
