using UnityEngine;
using System.Collections;

[RequireComponent(typeof(CharacterController))]
public class SimpleRpgPlayerController : MonoBehaviour
{
	public float walk_speed = 3;
	public float run_speed = 6;
	public float _backpedal_speed = 3;
	public float jump_power = 8;
	public float gravity = 20;
	public float slope_limit = 55;
	public float fall_threshold = 10;
	public float anti_bunny = 0.75f;
	
	private bool _running = true;
	private bool _grounded = true;
	private float _speed = 0;
	private bool _autorun = false;
	private Vector3 _velocity = Vector3.zero;
	private float _fall_start = 0;
	private float _input_x = 0;
	private float _input_y = 0;
	private float _input_s = 0;
	private float _rotation = 0;

	private Transform _t;
	private CharacterController _controller;

	public bool Grounded
	{
		get { return _grounded; }
		set { _grounded = value; }
	}

	public Vector3 Velocity
	{
		get { return _velocity; }
		set { _velocity = value; }
	}

	public float InputX
	{
		get { return _input_x; }
	}

	public float InputY
	{
		get { return _input_y; }
	}

	public float InputS
	{
		get { return _input_s; }
	}

	public float Rotation
	{
		get { return _rotation; }
	}

	public float FallPosition
	{
		get { return _fall_start; }
		set { _fall_start = value; }
	}

	void Start()
	{
		_t = transform;
		_controller = GetComponent<CharacterController>();
		_controller.slopeLimit = slope_limit;
		_speed = run_speed;
	}

	void Update()
	{
		/*
		 * Uncomment this code if you want to make a toggle button for running / walking
		if(Input.GetButtonDown("ToggleRun"))
		{
			_running = !_running;
		}
		*/
		
		/* If user middle-clicks, toggle autorun on/off
		if(Input.GetMouseButtonDown(2))
		{
			_autorun = !_autorun;
		}
		
		// If on the ground, allow jumping
		if(_grounded)
		{
			if(Input.GetButtonDown("Jump"))
			{
				_velocity.y = jump_power;
				_grounded = false;
			}
		}
		*/
	}
	
	// Physics should be handled within FixedUpdate()
	void FixedUpdate()
	{
		float input_modifier = (_input_x != 0.0f && _input_y != 0.0f) ? 0.7071f : 1.0f;
		
		_input_x = Input.GetAxis("Horizontal");
		_input_y = Input.GetAxis("Vertical");
		
		/*
		 * Uncomment this code if you want to add a strafing axis
		_input_s = Input.GetAxis("Strafe");
		*/
		
		// If autorun is enabled, set Y input to always be 1 until user uses the Y axis
		if(_autorun)
		{
			if(_input_y == 0)
			{
				_input_y = 1;
			}
			else
			{
				_autorun = false;
			}
		}
		
		// If user is using strafe keys, override X axis
		if(_input_s != 0)
		{
			_input_x = _input_s;
			
		}
		
		// If the user is not holding right-mouse button, rotate the player with the X axis instead of strafing
		if(!Input.GetMouseButton(1) &&
		_input_x != 0 &&
		_input_s == 0)
		{
			_t.Rotate(new Vector3(0, _input_x * (_speed / 2.0f), 0));
			_rotation = _input_x;
			_input_x = 0;
		}
		/*
		else
		{
			_rotation = 0;
		}
		*/
		
		// Movement direction and speed
		if(_input_y < 0)
		{
			_speed = _backpedal_speed;
			Debug.Log ("back");
		}
		else
		{
			if(_input_y > 0){
				Debug.Log("walking");
				animation.CrossFade("scarecrow_walk");
				if(_running)
				{
					_speed = run_speed;			
				}
				else
				{
					_speed = walk_speed;				
				}
			}
		}
		
		// If on the ground, test to see if still on the ground and apply movement direction
		if(_grounded)
		{
			if(!Physics.Raycast(_t.position, -Vector3.up, 0.2f))
			{
				_grounded = false;
			}

			_velocity = new Vector3(_input_x * input_modifier, -anti_bunny, _input_y * input_modifier);
			_velocity = _t.TransformDirection(_velocity) * _speed;
			
			
		}
		else
		{
			// Sets the falling start position to the highest point the player reaches
			if(_fall_start < _t.position.y)
			{
				_fall_start = _t.position.y;
			}
		}

		_velocity.y -= gravity * Time.deltaTime;

		_controller.Move(_velocity * Time.deltaTime);
	}
	
	void OnControllerColliderHit(ControllerColliderHit col)
	{
		// This keeps the player from sticking to walls
		float angle = col.normal.y * 90;

		if(angle < slope_limit)
		{
			if(_grounded)
			{
				_velocity = Vector3.zero;
			}

			if(_velocity.y > 0)
			{
				_velocity.y = 0;
			}
			else
			{
				_velocity += new Vector3(col.normal.x, 0, col.normal.z).normalized;
			}

			_grounded = false;
		}
		else
		{
			// Player is grounded here
			// If player falls too far, trigger falling damage
			if(_t.position.y < _fall_start - fall_threshold)
			{
				FallingDamage(_fall_start - fall_threshold - _t.position.y);
			}
			
			_fall_start = _t.position.y;

			_grounded = true;
			_velocity.y = 0;
		}
	}
	
	public void FallingDamage(float fall_distance)
	{
		Debug.Log("Fell " + fall_distance + " units.");
	}
}