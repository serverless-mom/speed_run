using UnityEngine;
using System.Collections;

public class CharacterSpawner : MonoBehaviour {


	public void Spawn(GameObject CharacterSlected){
		if(CharacterSlected){
			GameObject.Instantiate(CharacterSlected,this.transform.position,Quaternion.identity);
		}
	}
	
}
