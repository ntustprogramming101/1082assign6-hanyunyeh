

class Robot extends Enemy{
  // Requirement #5: Complete Dinosaur Class

  final int PLAYER_DETECT_RANGE_ROW = 2;
  final int LASER_COOLDOWN = 180;
  final int HAND_OFFSET_Y = 37;
  final int HAND_OFFSET_X_FORWARD = 64;
  final int HAND_OFFSET_X_BACKWARD = 16;
  PImage img;
  float speed = 2f;
  boolean is = false;

  // HINT: Player Detection in update()
  /*

  boolean checkX = ( Is facing forward AND player's center point is in front of my hand point )
          OR ( Is facing backward AND player's center point (x + w/2) is in front of my hand point )

  boolean checkY = player is less than (or equal to) 2 rows higher or lower than me

  if(checkX AND checkY){
    Is laser's cooldown ready?
      True  > Fire laser from my hand!
      False > Don't do anything
  }else{
    Keep moving!
  }

  */
  

  void display(){
     if (x < 0 || x > width - w) { 
        speed *= -1 ;
      }
     int direction = ( speed > 0) ? RIGHT : LEFT;
    pushMatrix();
      translate(x, y);
      if ( direction == RIGHT ) {
        scale(1, 1);
        image(img, 0, 0, w, h); 
      } 
      else {
        scale(-1, 1);
        image(img, -w, 0, w, h); 
      }
    popMatrix();
    //image(dinosaur, x, y);
  }

  void update(){
    
    if( !is ){
      x += speed;
    }
    
    if( y-2*80 <= player.y && player.y <= y+2*80 ){
      

       if( ((x+w < player.x && speed>0) || (x > player.x && speed<0)) ){
         //println("aaa\n");
           is = true;
       }
       else{
         is = false;
       }
       
    }
    else{
      is = false;
    }
  }

  Robot( float x, float y ){
    super( x,y );
    img = robot;
  }
}
