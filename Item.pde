class Item {
	boolean isAlive=true;
	float x, y;
	float w = SOIL_SIZE;
	float h = SOIL_SIZE;
  PImage img;



	void display(){
  
    if(isAlive!=false) image(img,x,y);
}

   Item(){}
  
	void checkCollision(Player player){}
 
  void Moveto(float x, float y){
		
		this.x = x;
		this.y = y;
	}
}
