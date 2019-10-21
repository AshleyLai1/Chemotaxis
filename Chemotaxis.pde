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
 	x = 100;
 	y = 100;
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
 		colony[i].show();
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
 		ellipse(x,y,20,20);

 	}
 	void move(){
 		x = x + (int)(Math.random()*3-2);
 		y = y + (int)(Math.random()*4-2);

 	}
 }    