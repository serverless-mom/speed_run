#pragma strict
var rotationSpeed = 3;
private var blinkTime : int;
private var renderers;

//gets the cowardice value from the main Pig script
function invincible (cowardice : int) {
	blinkTime = cowardice;
	renderers = GetComponentsInChildren(Renderer);
}

function LightSwitch(){
	if (blinkTime%5==0){
		if ((blinkTime % 2 > 0)){
		//Destroy(gameObject);
		for (var r : Renderer in renderers){
			r.material.color = Color.green;
		}
		}
	if (blinkTime % 2 == 0){
		//
		for (var r : Renderer in renderers){
			r.enabled = true;

			r.material.color = Color.red;
		}
		}
	}
}



function Update () {
	blinkTime --;
	if (blinkTime>0){
		LightSwitch();
	}



}