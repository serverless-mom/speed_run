#pragma strict
public static var gameOver : boolean = false;
public static var mushroomTimer = 303;
static var scarecrowScore = 0;
static var pigScore = 0;


function Start () {

}

function Update () {
	if (gameOver == true){
		//Debug.Log ("game over man, game over!");
			Debug.Log("Scarecrow "+scarecrowScore+", Pig "+pigScore);

	}
}

function ScarecrowGotAMushroom (){
	scarecrowScore++;
	Debug.Log("Scarecrow "+scarecrowScore+", Pig "+pigScore);
}

function PigGotAMushroom(){
	pigScore++;
}