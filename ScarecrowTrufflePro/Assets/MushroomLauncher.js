#pragma strict
var PrizeMushrooms : Rigidbody;
var speed = 2;

function DigUpMushroom () {
    var mushroomClone : Rigidbody = Instantiate(PrizeMushrooms, transform.position, transform.rotation);
    //mushroomClone.velocity = transform.up * speed;

}

function Update () {

}