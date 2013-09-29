#pragma strict
var texture : Texture2D;
static var guiDepth : int = 0;

function OnGUI(){
	GUI.DrawTexture(Rect(0.0f, 0.0f, Screen.width, Screen.height), texture);
		if (GUI.Button (Rect (Screen.width / 2 + 130, Screen.height / 2 + 150, 200, 50), "Start Game")) {
			guiDepth = 1;
		print ("Let's Go!");
	}

}

function Start () {

}

function Update () {

}