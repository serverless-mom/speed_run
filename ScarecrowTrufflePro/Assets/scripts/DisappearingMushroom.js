#pragma strict
var rotationSpeed = 3;
private var lifespan : int;
private var renderers;
private var blink: boolean = false;
private var blinker: int = 0;

function Start () {
	lifespan = GameStates.mushroomTimer;
	renderers = GetComponentsInChildren(Renderer);
	transform.position.y = transform.position.y +2;
	transform.position.x = transform.position.x +1;
}

function LightSwitch(){
	if (blinker%15==0){
		if ((blinker % 2 > 0)){
		//Destroy(gameObject);
		for (var r : Renderer in renderers){
			r.enabled = false;
			r.material.color = Color.green;
		}
		}
	if (blinker % 2 == 0){
		//
		for (var r : Renderer in renderers){
			r.enabled = true;

			r.material.color = Color.red;
		}
		}
	}
}



function Update () {
	lifespan --;
	if (lifespan<200){
		blink = true;
		//Debug.Log("hitting the Blinker");
	}
	if (blink){
		blinker = blinker + 1;
		LightSwitch();
	}
	if (lifespan==0){
		Destroy(gameObject);
	}

	transform.Rotate(Vector3.up * rotationSpeed);


}