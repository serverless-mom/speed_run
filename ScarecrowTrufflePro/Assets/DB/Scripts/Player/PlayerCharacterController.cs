/// <summary>
/// Player character controller.
/// Player Controller by Keyboard and Mouse
/// </summary>

using UnityEngine;
using System.Linq;
using System.Collections.Generic;

[RequireComponent(typeof(CharacterSystem))]
public class PlayerCharacterController : MonoBehaviour
{
	
	private CharacterSystem character;
	private TouchScreenVal touchScreenMover;
	private TouchScreenVal touchScreenPress;

	
	void Start()
	{
		character = gameObject.GetComponent<CharacterSystem>();
		touchScreenMover = new TouchScreenVal(new Rect(0,0,Screen.width/2,Screen.height));
		touchScreenPress = new TouchScreenVal(new Rect(Screen.width/2,0,Screen.width/2,Screen.height));
		
		Screen.lockCursor = true;
	}
	
	
	
	
	void Update()
	{
		var direction	= Vector3.zero;
		var forward	= Quaternion.AngleAxis(-90,Vector3.up) * Camera.main.transform.right;
		mobileController();
		
		if(Screen.lockCursor)
		{
			if(Input.GetKey(KeyCode.W))
				direction	+= forward;
			if(Input.GetKey(KeyCode.S))
				direction	-= forward;
			if(Input.GetKey(KeyCode.A))
				direction	-= Camera.main.transform.right;
			if(Input.GetKey(KeyCode.D))
				direction	+= Camera.main.transform.right;
				
			if(Input.GetMouseButtonDown(0))
			{
				character.Attack();
			}
			var orbit = (OrbitGameObject)FindObjectOfType(typeof(OrbitGameObject));
			
			if(Input.GetKey(KeyCode.LeftShift))
			{
				orbit.HoldAim();
			}

			if(Input.GetMouseButtonDown(1))
			{
				character.Attack();
				var skillDeployer	= this.gameObject.GetComponent<CharacterSkillDeployer>();
				if(skillDeployer != null)
					skillDeployer.DeployWithAttacking();	
			}
			direction.Normalize();
			character.Move(direction);
		}
	}
	
	void OnGUI(){
		if(GUI.Button(new Rect(Screen.width - 120,Screen.height/2 - 50,100,100),"Special")){
			var skillDeployer	= this.gameObject.GetComponent<CharacterSkillDeployer>();
			if(skillDeployer != null)
				skillDeployer.DeployWithAttacking();	
		}
		
	}
	
	
	// Control with Touchscreen

	void mobileController(){
		
		if(touchScreenPress.OnTouchPress()){
			character.Attack();	
		}
		
		
		var direction	= Vector3.zero;
		var touchDirection = touchScreenMover.OnTouchDirection();
		direction.x = touchDirection.x;
		direction.z = touchDirection.y;
		
		character.Move(direction);
	}

	
}

