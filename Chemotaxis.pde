 //declare bacteria variables here   
 int x;
 int y;
 //Bacteria bac;
 Bacteria [] colony;
 int myColor = color(250,0,0);
 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(300,300);
 	x = 150;
 	y = 150;
 	colony = new Bacteria[10];
 	for(int i=0;i<colony.length;i++){
 		colony[i] = new Bacteria();
 	}

 }   
 void draw()   
 {    
 	//move and show the bacteria   

 	for(int i = 0; i< colony.length;i++){
 		colony[i].show();
 		colony[i].move();
 	}
 }  
 class Bacteria    
 {     
 	//lots of java! 
 	Bacteria(){
 		int myX, myY;
 		myX = x;
 		myY = y;
 	}

 	void show(){
 		background(0);
 		fill(myColor);
 		ellipse(mouseX,mouseY,50,50);
 		fill(250);
 		ellipse(mouseX-10,mouseY-10, 20,20);
 		ellipse(mouseX+10,mouseY-10, 20,20);
 		fill(0);
 		ellipse(mouseX-5,mouseY-5,5,5);
 		ellipse(mouseX+5,mouseY-5,5,5);
 		ellipse(mouseX, mouseY+10, 10,10);
 		fill(150);
 		rect(mouseX-15,mouseY+25,30,50);
 		fill(myColor);
 		ellipse(mouseX-18,mouseY+30,20,20);
 		ellipse(mouseX+18,mouseY+30,20,20);
 		ellipse(mouseX-16,mouseY+80,20,20);
 		ellipse(mouseX+16,mouseY+80,20,20);

 	}
 	void move(){
 		mouseX = mouseX + (int)(Math.random()*3)-1;
 		mouseY = mouseY + (int)(Math.random()*3)-1;
 	}
 }    