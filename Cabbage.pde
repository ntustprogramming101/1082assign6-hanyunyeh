class Cabbage extends Item {
	// Requirement #1: Complete Cabbage Class
      
			// Display Cabbage
			Cabbage(){
      
      super("img/cabbage.png");
      }
       
			// Check collision with player
      void checkCollision(Player player){
        if(isAlive==true)
        {
			if(player.health < player.PLAYER_MAX_HEALTH
			&& isHit(x, y, w, h, player.x, player.y, player.w, player.h)){

				player.health ++;
				isAlive = false;// Now that they're objects, toggle isAlive instead of throwing them away from screen
        

			    }
        }
		}

}
