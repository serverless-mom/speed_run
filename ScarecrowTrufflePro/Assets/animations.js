#pragma strict

function Start () {
}

function Update () {
  if(Input.GetKeyDown("space")) {
    animation.Play("scarecrow_attack");
  }
}