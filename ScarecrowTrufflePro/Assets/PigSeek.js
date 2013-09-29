// SeekSteer.cs
// Written by Matthew Hughes
// 19 April 2009
// Uploaded to Unify Community Wiki on 19 April 2009
// URL: http://www.unifycommunity.com/wiki/index.php?title=SeekSteer
 
//remade in JavaScript by Pier Shaw 
// URL: www.firecg.com 
//,,see my other sites http://www.industrialclubs.com/
//Significant re-writes by Toby Fee



	//Requires that the scarecrow be tagged with "Scarecrow" 
    var waypoints : Transform[];
    //How close you have to be to 'find' the waypoint
    var waypointRadius : float  = 10;
    //how fast the vector approaches the actual path to waypoint
    var damping : float = 5;
    var loop : boolean = true;
    var speed : float = 9.0;
    var scarecrowRadius = 1;
    var eatTime = 100;
 
    private var targetHeading : Vector3;
    private var currentHeading : Vector3;
    private var targetwaypoint : int;
    private var xform : Transform;
    private var useRigidbody : boolean;
    private var rigidmember : Rigidbody;
    private var scarecrow : GameObject;
    private var target : Vector3;
    private var eating : boolean;
    private var scared : boolean;
    private var runaway : boolean;
    private var truffleLeft : int; 
    private var retreatTime : int;

 
 
    // Use this for initialization

    function SetTarget(){
        target = waypoints[targetwaypoint].position;
    }
    function NegativeTarget(){
        currentHeading = targetHeading;
    }
   function Start() {
        retreatTime = 10;
        scarecrow=GameObject.FindWithTag("Player");
        moving = true;
        eating = false;
        xform = transform;
        currentHeading = xform.forward;
        if(waypoints.Length<=0)
        {
            //Debug.Log("No waypoints on "+name);
            enabled = false;
        }
        targetwaypoint = 0;
        SetTarget();
    }
    function EndGame(){
            targetwaypoint = 0;
            GameStates.gameOver = true;
    }
    function MoveForward(){
        xform.position +=currentHeading * Time.deltaTime * speed;
        xform.LookAt(xform.position+currentHeading);
    }
    function EatTruffle(){
        eating=true;
        truffleLeft=eatTime;
    }
    function ChompTruffle(){
        truffleLeft--;
        if (truffleLeft == 0){
            FinishTruffle();
        }
    }
    function FinishTruffle(){
        //Debug.Log("I Finished A Truffle, it was number "+targetwaypoint);
        eating=false;
        targetwaypoint++;
        if(targetwaypoint>=waypoints.Length)
        {
            EndGame();
        }
        else{
            SetTarget();
        }
    }
    function GetHurt(){
        NegativeTarget();
        //Debug.Log("Butthurt");
        runaway = true;
    }
    function Retreat(){
        if (retreatTime>0){
            retreatTime--;
        }
        else
            BeBrave ();
    }
    function BeBrave (){
        SetTarget();
        runaway=false;
    }


 
    // calculates a new heading
    function FixedUpdate() {
        targetHeading = target - xform.position;
        currentHeading = Vector3.Lerp(currentHeading,targetHeading,damping*Time.deltaTime);
    }
 
    // moves us along current heading
    function Update(){
		var scarecrowDistance = Vector3.Distance(transform.position, scarecrow.transform.position);
		//test for range to scarecrow
		if (scarecrowDistance<=scarecrowRadius){
			//Debug.Log("Too Close To Farmer");
            scared=true;
        }
        if (scared==true && scarecrowDistance>=scarecrowRadius){
            //Debug.Log("farmer moved away");
            scared=false;
        }
        if(Vector3.Distance(xform.position,waypoints[targetwaypoint].position)<=waypointRadius && !eating)
        {
            EatTruffle();
        }
        if (eating==true){
            ChompTruffle();
        }

        if (!eating && !scared){
            MoveForward();
        }

        if (runaway){
            Retreat();
        }


    }

    function OnTriggerEnter (pig_final : Collider){
        //Debug.Log("I hit something");
        GetHurt();
        triggered = true;
    }
        function OnTriggerExit (){
        //Debug.Log("not hitting nothing");
        triggered = false;
    }

    // draws red line from waypoint to waypoint
    function OnDrawGizmos(){
 
        Gizmos.color = Color.red;
        for(var i : int = 0; i< waypoints.Length;i++)
        {
           var pos : Vector3 = waypoints[i].position;
            if(i>0)
            {
                var prev : Vector3 = waypoints[i-1].position;
                Gizmos.DrawLine(prev,pos);
            }
        }
    }