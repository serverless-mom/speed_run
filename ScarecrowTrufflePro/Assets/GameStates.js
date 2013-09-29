#pragma strict
static var gameOver : boolean = false;

function Start () {

}

function Update () {
	if (gameOver == true){
		Debug.Log ("game over man, game over!");
	}
}