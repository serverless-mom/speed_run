/// <summary>
/// Player character UI.
/// Basic Player UI will show up any information of Player Character
/// Such as Inventory System , Skill System , etc...
/// </summary>

using UnityEngine;
using System.Collections;


public class PlayerCharacterUI : ItemUI {

	public GUISkin skin;
	private CharacterStatus characterStatus;
	private CharacterSkillDeployer skill;
	private Vector2 scrollPosition;
	private bool showItem,showStatus,showMouse;


	void Start ()
	{	
		base.SettingItemUI();
		
		characterStatus	= this.gameObject.GetComponent<CharacterStatus>();	
		skill = this.gameObject.GetComponent<CharacterSkillDeployer>();	
	}

	void Update()
	{
		if(Screen.lockCursor && Input.GetKeyDown(KeyCode.E)){
			Screen.lockCursor = false;	
		}


	}
	
	void drawStatus(){
		if(characterStatus){
		GUI.BeginGroup(new Rect(60,130,400,300));
		GUI.skin.label.fontSize = 20;
		GUI.skin.label.alignment = TextAnchor.UpperLeft;
			
		if(GUI.Button(new Rect(160,0,30,30),"X")){
			showStatus = false;
		}	
			
		GUI.Label(new Rect(0,0,300,30),"Status");
		GUI.skin.label.fontSize = 14;
		GUI.Label(new Rect(0,60,100,30),"STR");
		GUI.Label(new Rect(0,90,100,30),"AGI");
		GUI.Label(new Rect(0,120,100,30),"INT");
		GUI.Label(new Rect(0,150,100,30),"Point");
		GUI.Label(new Rect(0,180,100,30),"HP");
		GUI.Label(new Rect(0,210,100,30),"Damage");
		GUI.Label(new Rect(0,240,100,30),"Defend");
		
		GUI.Label(new Rect(60,60,100,30),""+characterStatus.STR);
		GUI.Label(new Rect(60,90,100,30),""+characterStatus.AGI);
		GUI.Label(new Rect(60,120,100,30),""+characterStatus.INT);
		GUI.Label(new Rect(60,150,100,30),""+characterStatus.StatusPoint);
		GUI.Label(new Rect(60,180,100,30),""+characterStatus.HP+" / "+characterStatus.HPmax);
		GUI.Label(new Rect(60,210,100,30),""+characterStatus.Damage);
		GUI.Label(new Rect(60,240,100,30),""+characterStatus.Defend);	
			
		if(characterStatus.StatusPoint>0){
			if(GUI.Button(new Rect(160,60,20,20),"+")){
				characterStatus.STR += 1;
				characterStatus.StatusPoint -= 1;
			}
			if(GUI.Button(new Rect(160,90,20,20),"+")){
				characterStatus.AGI += 1;
				characterStatus.StatusPoint -= 1;	
			}
			if(GUI.Button(new Rect(160,120,20,20),"+")){
				characterStatus.INT += 1;
				characterStatus.StatusPoint -= 1;	
			}
		}
		GUI.EndGroup();
		}
	}
	

	
	void OnGUI()
	{
		if(skin)
			GUI.skin = skin;

		if(character && characterStatus)
		{
			
			GUI.skin.label.fontSize = 18;
			GUI.skin.label.alignment = TextAnchor.UpperLeft;
			if(characterStatus.ThumbnailImage){
				GUI.DrawTexture(new Rect(60,Screen.height-200,100,100),characterStatus.ThumbnailImage);
			}
			GUI.Label(new Rect(180,Screen.height-230,300,30),"Money "+character.Money+"$");
			GUI.Label(new Rect(180,Screen.height-160,300,30),characterStatus.Name+"  Level."+characterStatus.LEVEL);
			GUI.Label(new Rect(180,Screen.height-140,300,30),"Exp "+characterStatus.EXP + " / "+characterStatus.EXPmax);
			string statusbuttontext = "Status";
			
			if(characterStatus.StatusPoint>0){
				statusbuttontext = "Status ("+characterStatus.StatusPoint+")";
			}
			if(GUI.Button(new Rect(180,Screen.height-195,100,30),statusbuttontext)){
				showStatus = true;
			}
			if(GUI.Button(new Rect(290,Screen.height-195,100,30),"Item")){
				showItem = true;
			}
			if(showStatus){
				drawStatus();
			}
			
			GUI.BeginGroup(new Rect(50,Screen.height-100,Screen.width,100));
			for(int i=0;i<character.ItemsEquiped.Length;i++){
				if(character.ItemsEquiped[i]!=null){
					DrawItemBox(character.ItemsEquiped[i],new Vector2(i*60,0));
				}
			}
			GUI.EndGroup();
			
			
			if(showItem)
			{
				drawItem();
			}
			
			
			if(!Screen.lockCursor){
				if(GUI.Button(new Rect(Screen.width-130,30,100,30),"Hide Cursor")){
					Screen.lockCursor = true;
				}
			}else{
				GUI.skin.label.fontSize = 17;
				GUI.skin.label.alignment = TextAnchor.UpperRight;
				GUI.Label(new Rect(Screen.width-330,30,300,30),"Press 'E' Show Cursor");		
			}
		}
		
		
		if(skill)
		{
			for(int i=0;i<skill.Skill.Length;i++)
			{
				DrawSkill(i,new Vector2((Screen.width - (skill.Skill.Length * 60) - 30) + i*60,Screen.height - 100));
			}	
		}
	}
	
	void drawItem(){
		GUI.BeginGroup(new Rect(Screen.width - 330,130,300,350));
		GUI.skin.label.fontSize = 20;
		GUI.skin.label.alignment = TextAnchor.UpperLeft;
		GUI.Label(new Rect(10,10,150,30),"Item Lists");
			
		scrollPosition = GUI.BeginScrollView(new Rect(0, 50, 300, 300), scrollPosition, new Rect(0, 50, 280, character.ItemSlots.Count * 60));
		for(int i=0;i<character.ItemSlots.Count;i++){
			DrawItemBoxDetail(character.ItemSlots[i],new Vector2(0,(i*60) + 50));
		}
		GUI.EndScrollView();
			
		if(GUI.Button(new Rect(270,0,30,30),"X"))
			showItem = false;

		GUI.EndGroup();
	}
	
	
	// Draw skill icon
	void DrawSkill(int index,Vector2 position)
	{
		if(skill.indexSkill == index)
		{
			GUI.skin.label.fontSize = 13;
			GUI.skin.label.alignment = TextAnchor.UpperLeft;
			GUI.Label(new Rect(10 + position.x,position.y - 10,55,50),"Selected");
		}

		if(GUI.Button(new Rect(10 + position.x,10 + position.y,50,50),skill.SkillIcon[index])){
			skill.indexSkill = index;
		}
		
	}
	

	
}
