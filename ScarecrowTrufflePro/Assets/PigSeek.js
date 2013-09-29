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
    var bravery : int = 10;
    var pigHP : int = 3;
    var randomWalkDistance : int = 42;
 
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
    private var wanderTime : int;


 
 
    // Use this for initialization

    function SetTarget(){
        target = waypoints[targetwaypoint].position;
    }
    function NegativeTarget(){
        currentHeading = -currentHeading;
    }
    function TargetScarecrow(){
        target = scarecrow.transform.position;
    }
    function FaceScarecrow(){
        xform.LookAt(scarecrow.transform.position);
    }
    function RandomWalk(){
        TargetScarecrow();
        wanderTime = randomWalkDistance;
        Debug.Log("Random Walk?"+target);

    }

    function MoveForward(){
        xform.position +=currentHeading * .1 * speed;
        xform.LookAt(xform.position+currentHeading);
    }
    function EatTruffle(){
        animation.Play("pig_dig");
        eating=true;
        truffleLeft=eatTime;
    }
    function ChompTruffle(){
        truffleLeft--;
        if (truffleLeft == 0){
            FinishTruffle();
        }
    }
    //eat a truffle, gain a life point, and either on to the next one or game over
    function FinishTruffle(){
        Debug.Log("I Finished A Truffle, it was number "+targetwaypoint);
        eating=false;
        pigHP++;
        NextTruffle();
    }
    function NextTruffle(){
        targetwaypoint++;
        if(targetwaypoint>=waypoints.Length)
        {
            EndGame();
            animation.Play("pig_idle");
        }
        else{
            SetTarget();
            animation.Play("pig_walk");
        }
    }

//Collision Results
    function GetHurt(){
        pigHP--;
        Debug.Log("HP down to "+pigHP);
        //probably some damage mechanics
        TurnAway();
        NextTruffle();
    }
    //set inverse vector to seem to run away
    function TurnAway(){
        NegativeTarget();
        runaway = true;
        retreatTime = bravery;

    }
    //called in Update function when runaway=true    
    function Retreat(){
        if (retreatTime>0){
            retreatTime--;
        }
        else
            BeBrave ();
    }
    //undo Retreat settings
    function BeBrave (){
        SetTarget();
        runaway=false;            
        retreatTime = bravery;

    }
    function Die(){
        animation["pig_death"].wrapMode = WrapMode.Once;
        animation.Play("pig_death");
    EndGame();
    }
    function EndGame(){
            speed=0;
            targetwaypoint = 0;
            GameStates.gameOver = true;
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
            Debug.Log("No waypoints on "+name);
            enabled = false;
        }
        targetwaypoint = 0;
        SetTarget();
        animation.Play("pig_walk");

    }
 
    // calculates a new heading
    function FixedUpdate() {
        if (!GameStates.gameOver){
                targetHeading = target - xform.position;
                currentHeading = Vector3.Lerp(currentHeading,targetHeading,damping);
        }
    }
    
 
    function Update(){
        if (!GameStates.gameOver){
            diceRoll = (Random.value);
            var scarecrowDistance = Vector3.Distance(transform.position, scarecrow.transform.position);
            //test for range to scarecrow
            if (scarecrowDistance<=scarecrowRadius){
                Debug.Log("Too Close To Farmer");
                scared=true;
                animation.Play("pig_idle");
            }
            if (scared){
                FaceScarecrow();
            }
            if (scared==true && scarecrowDistance>=scarecrowRadius){
                Debug.Log("farmer moved away");
                scared=false;
                animation.Play("pig_walk");
            }

            if (diceRoll>.99){
                RandomWalk();
            }
            if (wanderTime!=0){
                wanderTime--;
            }
            else SetTarget();
            if(Vector3.Distance(xform.position,waypoints[targetwaypoint].position)<=waypointRadius && !eating)
            {
                EatTruffle();
            }
            if (eating==true){
                ChompTruffle();
            }
            // moves us along current heading
            if (!eating && !scared){
                MoveForward();
            }

            if (runaway){
                Retreat();
            }
            if (pigHP<=0){
                Debug.Log("ack");
                Die();
        }
    }


    }
//Hit the edge or a vine
    function OnTriggerEnter (collider : Collider){
        Debug.Log("I hit "+collider.tag);

        if(collider.tag=="Wall"){
            TurnAway();

        }
        else if(collider.tag=="Vine"){
            GetHurt();
        }
        triggered = true;
    }
        function OnTriggerExit (){
        Debug.Log("not hitting nothing");
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