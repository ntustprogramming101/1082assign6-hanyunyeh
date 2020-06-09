class Dinosaur extends Enemy {
	// Requirement #4: Complete Dinosaur Class

	final float TRIGGERED_SPEED_MULTIPLIER = 5;

	// HINT: Player Detection in update()

	/*
	float currentSpeed = speed
	If player is on the same row with me AND (it's on my right side when I'm going right OR on my left side when I'm going left){
		currentSpeed *= TRIGGERED_SPEED_MULTIPLIER
	}
	*/
  float speed = 2f/2;
  int dinosaurMoveDirection = (speed > 0) ? RIGHT : LEFT;


  
  void display(){
    
    if(speed >= 0) {
    dinosaurMoveDirection = RIGHT;
    }if(speed < 0) {
    dinosaurMoveDirection = LEFT;
    }
    
  pushMatrix();
  translate(x , y);
  if (dinosaurMoveDirection == RIGHT) {
    scale(1, 1);
    image(dinosaur, 0, 0, w, h); 
  } else {
    scale(-1, 1);
    image(dinosaur, -w, 0, w, h); 
  }
  popMatrix();
    
  }
  

  void update(){
    
    x += speed;
    if(x >= width-w || x<=0 ) {
      speed *=-1 ;
    }
    
      if (y == player.y){
        if(player.x >= x && dinosaurMoveDirection == RIGHT){
            speed = TRIGGERED_SPEED_MULTIPLIER;
            if(player.x <= x && dinosaurMoveDirection == LEFT ) {
              speed = -TRIGGERED_SPEED_MULTIPLIER;
            }
        }
      }
      

 
  }

  Dinosaur(float x, float y){
    super(x, y);
  }
}
