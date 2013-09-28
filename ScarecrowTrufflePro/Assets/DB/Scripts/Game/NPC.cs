using UnityEngine;
using System.Collections;

public class NPC : ItemUI {

	public GUISkin skin;
	public string Text = "NPC name";
	public QuestBase[] Quest;
	
	private int npcState;
	private Vector2 scrollPosition;
	private ItemSlot[] itemshopList;
	
		
	void Start () {
		// item in shop
		itemshopList = new ItemSlot[8];
		itemshopList[0] = new ItemSlot();
		itemshopList[0].Index = 0;
		itemshopList[1] = new ItemSlot();
		itemshopList[1].Index = 1;
		itemshopList[2] = new ItemSlot();
		itemshopList[2].Index = 2;
		itemshopList[3] = new ItemSlot();
		itemshopList[3].Index = 3;
		itemshopList[4] = new ItemSlot();
		itemshopList[4].Index = 4;
		itemshopList[5] = new ItemSlot();
		itemshopList[5].Index = 4;
		itemshopList[6] = new ItemSlot();
		itemshopList[6].Index = 4;
		itemshopList[7] = new ItemSlot();
		itemshopList[7].Index = 4;
	}
	
	void drawItemShop(){
		
		GUI.BeginGroup(new Rect(Screen.width - 330,130,300,350));
		GUI.skin.label.fontSize = 20;
		GUI.skin.label.alignment = TextAnchor.UpperLeft;
		GUI.Label(new Rect(10,10,150,30),"Item Shop");
			
		scrollPosition = GUI.BeginScrollView(new Rect(0, 50, 300, 300), scrollPosition, new Rect(0, 50, 280, itemshopList.Length * 60));
		
		for(int i=0;i<itemshopList.Length;i++){
			DrawItemBoxShopDetail(itemshopList[i],new Vector2(0,(i*60) + 50));
		}
		
		GUI.EndScrollView();
			
		if(GUI.Button(new Rect(270,0,30,30),"X")){
			npcState = 0;
		}
		
		GUI.EndGroup();
	}
	
	void drawItemSell(){
		
		GUI.BeginGroup(new Rect(Screen.width - 330,130,300,350));
		GUI.skin.label.fontSize = 20;
		GUI.skin.label.alignment = TextAnchor.UpperLeft;
		GUI.Label(new Rect(10,10,150,30),"Item Sell");
			
		scrollPosition = GUI.BeginScrollView(new Rect(0, 50, 300, 300), scrollPosition, new Rect(0, 50, 280, character.ItemSlots.Count * 60));
		
		for(int i=0;i<character.ItemSlots.Count;i++){
			DrawItemBoxSellDetail(character.ItemSlots[i],new Vector2(0,(i*60) + 50));
		}
		
		GUI.EndScrollView();
			
		if(GUI.Button(new Rect(270,0,30,30),"X")){
			npcState = 0;
		}
		
		GUI.EndGroup();
	}
	
	
	void OnGUI(){
		if(skin)
			GUI.skin = skin;
		
		Vector3 screenPos = Camera.main.WorldToScreenPoint(this.gameObject.transform.position);	
		var dir	= (Camera.main.transform.position - this.transform.position).normalized;
	    var direction = Vector3.Dot(dir,Camera.main.transform.forward);
	    
		switch(npcState){
		case 0:
	
			if(direction < 0.6f){
				Vector2 textsize = GUI.skin.label.CalcSize(new GUIContent(Text));
				if(GUI.Button(new Rect(screenPos.x - (textsize.x + 20)/2,Screen.height - screenPos.y,textsize.x + 20,30),Text)){
					npcState = 1;
				}
			}
			break;
		case 1:
			if(GUI.Button(new Rect(screenPos.x - 75,Screen.height - screenPos.y,150,30),"Shop")){
				npcState = 2;
				SettingItemUI();
			}
			
			if(GUI.Button(new Rect(screenPos.x - 75,(Screen.height - screenPos.y) + 35,150,30),"Sell")){
				npcState = 3;
				SettingItemUI();
			}
			
			if(GUI.Button(new Rect(screenPos.x - 75,(Screen.height - screenPos.y) + 70,150,30),"Quest")){
				npcState = 4;
			
			}
			
			if(GUI.Button(new Rect(screenPos.x - 75,(Screen.height - screenPos.y) + 105,150,30),"Bye")){
				npcState = 0;
			}
			
			break;
		case 2:
			drawItemShop();
			break;
		case 3:
			drawItemSell();
			break;
		case 4:
			if(GUI.Button(new Rect(screenPos.x - 75,(Screen.height - screenPos.y),150,30),"Kill Zombie")){
				PlayerQuestManager questmanage = (PlayerQuestManager)FindObjectOfType(typeof(PlayerQuestManager));
				questmanage.QuestPreparing(Quest[0]);
				
				npcState = 0;
			}
			if(GUI.Button(new Rect(screenPos.x - 75,(Screen.height - screenPos.y) + 35,150,30),"Collect Potion")){
				PlayerQuestManager questmanage = (PlayerQuestManager)FindObjectOfType(typeof(PlayerQuestManager));
				questmanage.QuestPreparing(Quest[1]);

				npcState = 0;
			}
			if(GUI.Button(new Rect(screenPos.x - 75,(Screen.height - screenPos.y) + 70,150,30),"Bye")){
				npcState = 0;
			}
			
			break;
		}
	}
}
