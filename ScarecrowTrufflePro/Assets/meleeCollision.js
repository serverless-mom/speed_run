#pragma strict
var dissapoint : AudioSource[];

function Start () {
}

function Update () {
  if (transform.position.y<-10){
    GameStates.gameOver=true;
    Debug.Log("ending because we fell off a cliff except we didn't");
  }

}



function OnTriggerStay (other : Collider) {
  if(other.tag == "Enemy"){
    if(Input.GetKeyDown("space")){
      // Or other sweet vine logic. 
      //Destroy(other.gameObject);
      other.SendMessage("ApplyDamage", 10.0);
   }	
    }

  else if(other.tag == "Pickup"){
    Debug.Log ("TryingToPick Up Mushroom");
    Destroy(other.gameObject);
    GameStates.scarecrowScore++;
    gameGUI.foundTruffles++;
    Debug.Log("Found Truffles going up to "+gameGUI.foundTruffles);
    var clipPick = Random.Range(0,2);
    dissapoint[clipPick].Play();
    GameStates.swiped = GameStates.mushroomTimer;

  }

}