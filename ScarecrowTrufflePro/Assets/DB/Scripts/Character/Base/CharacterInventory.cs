/// <summary>
/// Character inventory.
/// this class is an Item Equipment and Inventory sorting System
/// </summary>

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CharacterInventory : MonoBehaviour
{
	public GameObject[] ItemEmbedSlot;// list of embedded objects.
	public ItemSlot[] ItemsEquiped;// list of item equiped
	public List<ItemSlot> ItemSlots = new List<ItemSlot>();// list of items collected
	public int Money = 50;
	
	public ItemManager itemManager;// Item data base
	private CharacterStatus character;
	private CharacterAttack characterAttack;
	private CharacterSystem characterSystem;

	void Start ()
	{
		character	= this.gameObject.GetComponent<CharacterStatus>();	
		characterAttack	= this.gameObject.GetComponent<CharacterAttack>();	
		characterSystem	= this.gameObject.GetComponent<CharacterSystem>();	

		itemManager = (ItemManager)FindObjectOfType(typeof(ItemManager));
		ItemsEquiped = new ItemSlot[ItemEmbedSlot.Length];

	}
	

	void removeAllChild(GameObject parent){
		foreach(Transform trans in parent.transform) {
			if(trans!=null){
				GameObject.Destroy(trans.gameObject);
			}
		}
	}
	
	// get number of item
	public int GetItemNum(int index)
	{
		int res = 0;
		foreach(var itemSlot in ItemSlots)
		{
			if(itemSlot != null && itemSlot.Index == index)
			{
				res = itemSlot.Num;
				break;
			}
		}
		return res;
	}
	
	// add item to lists
	public void AddItem(int index,int num)
	{
		foreach(var itemSlot in ItemSlots)
		{
			if(itemSlot != null && itemSlot.Index == index)
			{
				itemSlot.Num += num;
				return;
			}
		}

		var itemgot	= new ItemSlot();
		itemgot.Index = index;
		itemgot.Num = num;
		
		ItemSlots.Add(itemgot);
		EquipItem(itemgot);
	}
	
	// remove item from list by number
	public void RemoveItem(ItemSlot item,int num){
		if(item != null){
			if(item.Num>=num){
				item.Num-=num;
			}
			if(item.Num<=0){
				ItemSlots.Remove(item);
			}
			if(CheckEquiped(item)){
				UnEquipItem(item);
			}
		}
	}
	
	
	// equip item by ItemSlot object
	public void EquipItem(ItemSlot indexEquip)
	{
		// checking this item is exit
		if(itemManager != null && indexEquip.Index >= itemManager.Items.Length)
			return;

		// checking this item must contain a prefab object
		var itemCollector	= itemManager.Items[indexEquip.Index];
		if(itemCollector.ItemPrefab != null)
		{
			//Get a Strcture of Embedded item
			var itemget	= itemCollector.ItemPrefab.GetComponent<ItemInventory>();
			if(itemget != null)
			{
				int slot	= itemget.ItemEmbedSlotIndex;
				// clone a prefab from Embedded item Strcture
				var item	= (GameObject)Instantiate(itemCollector.ItemPrefab,ItemEmbedSlot[slot].transform.position,ItemEmbedSlot[slot].transform.rotation);
				// remove old object
				removeAllChild(ItemEmbedSlot[slot]);
				// embedded a prefab together
				item.transform.parent = ItemEmbedSlot[slot].transform;
				ItemsEquiped[slot] = indexEquip;
				
				
				Debug.Log("Equiped " + itemget);
				
			}
		}
	}
	// UnEquipItem by ItemSlot object
	public void UnEquipItem(ItemSlot indexEquip)
	{
		if(indexEquip.Index < itemManager.Items.Length)
		{
			//Get a Strcture of Embedded item
			var itemget = itemManager.Items[indexEquip.Index].ItemPrefab.GetComponent<ItemInventory>();
			// get an index of equipped object
			int slot = itemget.GetComponent<ItemInventory>().ItemEmbedSlotIndex;
			// remove old object
			removeAllChild(ItemEmbedSlot[slot]);
			ItemsEquiped[slot] = null;
			Debug.Log("UnEquipped "+itemget);
		}
	}
	
	// Using item by ItemSlot object
	public void UseItem(ItemSlot indexItem)
	{
		if(indexItem.Num > 0 && itemManager.Items[indexItem.Index].ItemPrefab)
		{
			// the concept is embedded an object into this character and let it work
			var item = (GameObject)Instantiate(itemManager.Items[indexItem.Index].ItemPrefab,this.transform.position,this.transform.rotation);
			item.transform.parent = this.gameObject.transform;
			RemoveItem(indexItem,1);// this item hasbeen used ,remove it from list
			Debug.Log(item+" Removed");
		}
	}	
	
	// checking equipped item
	public bool CheckEquiped(ItemSlot indexEquip)
	{
		var itemget = itemManager.Items[indexEquip.Index].ItemPrefab.GetComponent<ItemInventory>();
		if(itemget && itemget.GetComponent<ItemInventory>()){
			int slot = itemget.GetComponent<ItemInventory>().ItemEmbedSlotIndex;
			return ItemsEquiped[slot] != null && ItemsEquiped[slot].Index == indexEquip.Index;
		}else{
			return false;	
		}
	}


	void Update ()
	{
		// Calculate all status to Character.  <CharacterStatus.cs>
		if(ItemEmbedSlot.Length <= 0)
			return;

		int damage = 0;
		int defend = 0;
		character.AttackSpeedInventory = 0;
		
		for(int i=0;i<ItemsEquiped.Length;i++){
			if(ItemsEquiped[i]!=null){
				damage += itemManager.Items[ItemsEquiped[i].Index].ItemPrefab.GetComponent<ItemInventory>().Damage;
				defend += itemManager.Items[ItemsEquiped[i].Index].ItemPrefab.GetComponent<ItemInventory>().Defend;
			}
		}
		
		if(character)
		{
			character.DamageInventory = damage;
			character.DefendInventory = defend;
		}
		
		// ItemsEquiped[0] is a Right hand weapon
		if(itemManager != null && ItemsEquiped[0] != null)
		{
			var index	= ItemsEquiped[0].Index;
			var inventory	= itemManager.Items[index].ItemPrefab.GetComponent<ItemInventory>();
			if(character)
				character.AttackSpeedInventory	= inventory.SpeedAttack;	
			
			if(characterAttack)
				characterAttack.SoundHit	= inventory.SoundHit;
		}
	}
}



