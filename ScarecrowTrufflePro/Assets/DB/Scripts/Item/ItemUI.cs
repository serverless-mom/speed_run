using UnityEngine;
using System.Collections;

public class ItemUI : MonoBehaviour {

	public CharacterInventory character;
	public ItemManager itemManage;
	
	public void SettingItemUI(){
		PlayerCharacterController player = (PlayerCharacterController)FindObjectOfType(typeof(PlayerCharacterController));
		
		if(player && player.gameObject.gameObject.GetComponent<CharacterInventory>()){
			character = player.gameObject.gameObject.GetComponent<CharacterInventory>();
		}
		
		itemManage = (ItemManager)FindObjectOfType(typeof(ItemManager));
	}
	

	void Update () {
		
	}
	

	
	
	// Draw item icon
	public void DrawItemBox(ItemSlot itemslot,Vector2 position){
		if(itemslot!=null){
			ItemCollector item = itemManage.Items[itemslot.Index];
			GUI.Box(new Rect(10 + position.x,10 + position.y,50,50),"");	
			GUI.DrawTexture(new Rect(10 + position.x,10 + position.y,50,50),item.Icon);
			GUI.skin.label.fontSize = 13;
			GUI.skin.label.alignment = TextAnchor.UpperLeft;
			GUI.Label(new Rect(14+position.x,14+position.y,30,30),itemslot.Num.ToString());
		}
	}
	
	
	// Draw Item icon with detail
	public void DrawItemBoxDetail(ItemSlot itemslot,Vector2 position){
		if(itemslot!=null){
			var item = itemManage.Items[itemslot.Index];
			GUI.Box(new Rect(10 + position.x,10 + position.y,50,50),"");	
			GUI.DrawTexture(new Rect(10 + position.x,10 + position.y,50,50),item.Icon);
			GUI.skin.label.fontSize = 13;
			GUI.skin.label.alignment = TextAnchor.UpperLeft;
			GUI.Label(new Rect(14+position.x,14+position.y,30,30),itemslot.Num.ToString());
			GUI.skin.label.alignment = TextAnchor.MiddleLeft;
			GUI.Label(new Rect(position.x+70,position.y,100,60),item.Name);
			
			switch(item.ItemType)
			{
			case ItemType.Weapon:
				if(character.CheckEquiped(itemslot)){
					if(GUI.Button(new Rect(200 + position.x, position.y+10,80,30),"UnEquipped")){
						character.UnEquipItem(itemslot);
					}
				}else{
					if(GUI.Button(new Rect(200 + position.x, position.y+10,80,30),"Equip")){
						character.EquipItem(itemslot);
					}
				}
				break;
			case ItemType.Edible:
				if(GUI.Button(new Rect(200 + position.x, position.y+10,80,30),"Use")){
					character.UseItem(itemslot);
				}
				break;
				
			}
		}
	}
	
	public void DrawItemBoxShopDetail(ItemSlot itemslot,Vector2 position){
		if(itemslot!=null){
			var item = itemManage.Items[itemslot.Index];
			GUI.Box(new Rect(10 + position.x,10 + position.y,50,50),"");	
			GUI.DrawTexture(new Rect(10 + position.x,10 + position.y,50,50),item.Icon);
			GUI.skin.label.fontSize = 13;
			GUI.skin.label.alignment = TextAnchor.UpperLeft;
			GUI.skin.label.alignment = TextAnchor.MiddleLeft;
			GUI.Label(new Rect(position.x+70,position.y,100,60),item.Name);
		 	
			if(GUI.Button(new Rect(200 + position.x, position.y+10,80,30),"Buy "+item.Price+"$")){
				if(character.Money >= item.Price){
					character.AddItem(itemslot.Index,1);
					character.Money -= item.Price;
				}
			}
		}
	}
	
	public void DrawItemBoxSellDetail(ItemSlot itemslot,Vector2 position){
		if(itemslot!=null){
			var item = itemManage.Items[itemslot.Index];
			GUI.Box(new Rect(10 + position.x,10 + position.y,50,50),"");	
			GUI.DrawTexture(new Rect(10 + position.x,10 + position.y,50,50),item.Icon);
			GUI.skin.label.fontSize = 13;
			GUI.skin.label.alignment = TextAnchor.UpperLeft;
			GUI.Label(new Rect(14+position.x,14+position.y,30,30),itemslot.Num.ToString());
			GUI.skin.label.alignment = TextAnchor.MiddleLeft;
			GUI.Label(new Rect(position.x+70,position.y,100,60),item.Name);
		 	
			if(GUI.Button(new Rect(200 + position.x, position.y+10,80,30),"Sell "+item.Price+"$")){
				character.RemoveItem(itemslot,1);
				character.Money += item.Price;
			}
			
		}
	}
}
