#pragma strict

function Start () {
}

function Update () {
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
    GameStates.scarecrowScore++;
    Destroy(other.gameObject);
  }

}