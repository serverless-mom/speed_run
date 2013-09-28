/// <summary>
/// Quest base. Quest Template using to be a base of your quest.
/// </summary>

using UnityEngine;
using System.Collections;


public class QuestBase : MonoBehaviour {
	
	public bool IsSuccess;
	public string QuestName = "";
	public string Description = "";
	public string FinishText = "";
	public string QuestDisplay = "";
	
	public GameObject Player;
	
 	public virtual void Checking()
    {
		
    }
	public virtual void Info()
    {

    }
	public virtual void Abadoned()
    {

    }
	public virtual void ActioneMessage(string message)
    {

    }
	public virtual void Rewarded()
    {

    }
	public virtual void Update()
    {

    }
	public virtual void Initialize(GameObject player)
    {
		Player = player;
    }

}
