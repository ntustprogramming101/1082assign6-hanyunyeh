class Clock extends Item {
	// Requirement #2: Complete Clock Class

      // Display Cabbage
      Clock(){
        
      img = clock;
      }
      
      // Check collision with player
      void checkCollision(Player player){
        if(isAlive==true)
        {   
      if(player.health < player.PLAYER_MAX_HEALTH
      && isHit(x, y, w, h, player.x, player.y, player.w, player.h)){

				addTime(CLOCK_BONUS_SECONDS);// Now that they're objects, toggle isAlive instead of throwing them away from screen
        isAlive = false;
        
          }
        }
    }

}
