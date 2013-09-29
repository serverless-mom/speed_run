#pragma strict
static var gameOver : boolean = false;
static var mushroomTimer = 303;
static var scarecrowScore = 0;
static var pigScore = 0;
static var swiped = 0;



function Start () {
scarecrowScore = 0;
pigScore = 0;
swiped = 0;
}

function Update () {
	if (gameOver == true){
		//Debug.Log ("game over man, game over!");
		Debug.Log("Scarecrow "+scarecrowScore+", Pig "+pigScore);
	}
	  if (swiped>0){
    swiped --;
  }
}

function ScarecrowGotAMushroom (){
	scarecrowScore++;
	Debug.Log("Scarecrow "+scarecrowScore+", Pig "+pigScore);
}

function PigGotAMushroom(){
	pigScore++;
}