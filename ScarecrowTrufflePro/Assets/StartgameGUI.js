#pragma strict
var texture : Texture2D;
static var guiDepth : int = 0;

function OnGUI(){
				GUI.backgroundColor = Color.clear;

	GUI.DrawTexture(Rect(0.0f, 0.0f, Screen.width, Screen.height), texture);
		if (GUI.Button (Rect (500, 430, 350, 170), "   ")) {
			guiDepth = 1;
		Application.LoadLevel("Level1");
	}

}

function Start () {

}

function Update () {

}