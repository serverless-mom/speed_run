#pragma strict
var truffleTracker : Texture2D[];
var pigLife : Texture2D[];
var pigHealthMeter : Texture2D;
static var guiDepth : int = 0;
static var pigHeartState : int;
static var gankedCount : int;
static var foundTruffles : int;
var truffle1 : Texture2D;
var truffle2 : Texture2D;
var truffle3 : Texture2D;
var truffle4 : Texture2D;

function OnGUI(){
		GUI.DrawTexture(Rect(60,600,100,100), pigHealthMeter);
		GUI.DrawTexture(Rect(910,600,100,100), truffle1);
		GUI.DrawTexture(Rect(910,500,100,100), truffle2);
		GUI.DrawTexture(Rect(910,400,100,100), truffle3);
		GUI.DrawTexture(Rect(910,300,100,100), truffle4);
	}


function Start () {
	pigHealthMeter = pigLife[0];
	pigHeartState = 0;
	truffle1 = truffleTracker[1];
	truffle2 = truffleTracker[1];
	truffle3 = truffleTracker[1];
	truffle4 = truffleTracker[1];
	gankedCount = 0;
	foundTruffles = 0;
}

function Update () {
	if (gankedCount == 1){
		truffle1 = truffleTracker[2];
	}
	if (gankedCount == 2){
		truffle2 = truffleTracker[2];
	}

	if (foundTruffles == 1){
		truffle4 = truffleTracker[0];
	}
	if (foundTruffles == 2){
		truffle3 = truffleTracker[0];
	}
	if (foundTruffles == 3){
		truffle2 = truffleTracker[0];
	}
	if (foundTruffles == 4){
		truffle1 = truffleTracker[0];
	}
	if (pigHeartState>5){
		pigHeartState=5;
	}
	pigHealthMeter = pigLife[pigHeartState];
	Debug.Log("Pig's Heart STate is "+pigHeartState);
}