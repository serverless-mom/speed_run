#pragma strict

var vine_health = 20;
var vine_length : float = 0;
//set scale goes from z axis starting at 0.1
//to a max of 2.0

var startScale = Vector3.zero;
var endScale = Vector3.one;
var t = 0.0;
var speed = .1;

function Start() { 
//resource hog and not final
  growVine();
}
function growVine() {
  while (t < 1.0) {
    t += Time.deltaTime * speed;
    transform.localScale = Vector3.Lerp(startScale, endScale, t);
    yield;
  }
}



function onTriggerEnter(other : Collider) {
  Debug.Log("Hit By"+other.tag);
}

function ApplyDamage(damage : int){
  	vine_health -= damage;
  	if(vine_health <= 0) {
  	  Destroy (gameObject);  
  	}
  	Debug.Log(vine_health);
  }
  

