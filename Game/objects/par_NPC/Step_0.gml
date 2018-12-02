/// @description 

//---------COLLISIONS
//Horizontal
if(moveX != 0) {
	var collisionH = instance_place(x+moveX, y, o_solid);
	if(collisionH != noone and collisionH.collideable){
		repeat(abs(moveX)){
			if(!place_meeting(x+sign(moveX), y, o_solid)){ x += sign(moveX); } 
			else { break; }
		}
		moveX = 0;
	}
} 

//Vertical
else if (moveY != 0){
	var collisionV = instance_place(x, y+moveY,  o_solid);
	if(collisionV != noone and collisionV.collideable){
		repeat(abs(moveY)){
			if(!place_meeting(x, y+sign(moveY),  o_solid)){ y += sign(moveY); } 
			else { break; }
		}
		moveY = 0;
	}
}

//---------APPLY MOVEMENT
x += moveX;
y += moveY;
