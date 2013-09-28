using UnityEngine;
using System.Collections;

public class CharacterSelector : MonoBehaviour {

	public GUISkin skin;
	public GameObject CharacterSlected;
	public string Text = "Name";
	void Start () {
	
	}

	void Update () {
		var spawner = (CharacterSpawner)FindObjectOfType(typeof(CharacterSpawner));
		if(spawner){
			spawner.Spawn(CharacterSlected);
			Destroy(this.gameObject);
		}
	}
	
	void OnGUI(){
		if(skin)
			GUI.skin = skin;
		
		Vector3 screenPos = Camera.main.WorldToScreenPoint(this.gameObject.transform.position);	
		var dir	= (Camera.main.transform.position - this.transform.position).normalized;
	    var direction = Vector3.Dot(dir,Camera.main.transform.forward);
	    
		if(direction < 0.6f){
			if(GUI.Button(new Rect(screenPos.x - 75,Screen.height - screenPos.y,150,30),Text)){
				DontDestroyOnLoad(this.gameObject);
				Application.LoadLevel("Demo");
			}
		}
	}
}
