 
//enemy prefabs to spawn
var Enemy1 : GameObject;
var Enemy2 : GameObject;
var Enemy3 : GameObject;
 
var spawn1 : Transform;
var spawn2 : Transform;
var spawn3 : Transform;
 
 
 
 
 
function spawnEnemies () {
 
 
for(var i=0;i<4;i++) {
 
var random1 : int = Random.Range(0,3);
 
                switch (random1) {
                        case (0):
                        var spawnEnemy1 = Instantiate(Enemy1);
                        switch (i) {
                                case (0):
                                spawnEnemy1.transform.position = new Vector3(spawn1.transform.position.x, spawn1.transform.position.y, spawn1.transform.position.z);
                                spawnEnemy1.transform.tag = "Vine_Temp";  
                                break;
                                case (1):
                                spawnEnemy1.transform.position = new Vector3(spawn2.transform.position.x, spawn2.transform.position.y, spawn2.transform.position.z);
                                spawnEnemy1.transform.tag = "Vine_Temp";  
                                break;
                                case (2):
                                spawnEnemy1.transform.position = new Vector3(spawn3.transform.position.x, spawn3.transform.position.y, spawn3.transform.position.z);
                                spawnEnemy1.transform.tag = "Vine_Temp";  
                                break; 
                                }
                        break;           
                        case (1):
                        var spawnEnemy2 = Instantiate(Enemy2);
                                switch (i) {
                                case (0):
                                spawnEnemy2.transform.position = new Vector3(spawn1.transform.position.x, spawn1.transform.position.y, spawn1.transform.position.z);
                                spawnEnemy2.transform.tag = "Vine_Temp";  
                                break;
                                case (1):
                                spawnEnemy2.transform.position = new Vector3(spawn2.transform.position.x, spawn2.transform.position.y, spawn2.transform.position.z);
                                spawnEnemy2.transform.tag = "Vine_Temp";  
                                break;
                                case (2):
                                spawnEnemy2.transform.position = new Vector3(spawn3.transform.position.x, spawn3.transform.position.y, spawn3.transform.position.z);
                                spawnEnemy2.transform.tag = "Vine_Temp";  
                                break; 
                                }
                        break;  
                        case (2):
                        var spawnEnemy3 = Instantiate(Enemy3);
                                switch (i) {
                                case (0):
                                spawnEnemy3.transform.position = new Vector3(spawn1.transform.position.x, spawn1.transform.position.y, spawn1.transform.position.z);
                                spawnEnemy3.transform.tag = "Vine_Temp";  
                                break;
                                case (1):
                                spawnEnemy3.transform.position = new Vector3(spawn2.transform.position.x, spawn2.transform.position.y, spawn2.transform.position.z);
                                spawnEnemy3.transform.tag = "Vine_Temp";  
                                break;
                                case (2):
                                spawnEnemy3.transform.position = new Vector3(spawn3.transform.position.x, spawn3.transform.position.y, spawn3.transform.position.z);
                                spawnEnemy3.transform.tag = "Vine_Temp";  
                                break; 
                                }
                        break;  
 
}
 
}
 
}