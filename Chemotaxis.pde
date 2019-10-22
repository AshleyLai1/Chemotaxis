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
 		fill(myColor);
 		ellipse(mouseX,mouseY,20,20);
 		//ellipse(x+40,y+40,20,20);

 	}
 	void move(){
 		mouseX = mouseX + (int)(Math.random()*3)-1;
 		mouseY = mouseY + (int)(Math.random()*3)-1;
 	}
 }    