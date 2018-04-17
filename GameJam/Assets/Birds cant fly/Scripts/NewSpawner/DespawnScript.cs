using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DespawnScript : MonoBehaviour
{
    private GameObject sceneManager;
    private SpawnScript spawnScript;

	// Use this for initialization
	void Awake()
    {
        sceneManager = GameObject.Find("SceneManager");
        spawnScript = sceneManager.GetComponent<SpawnScript>();
    }


    private void OnTriggerEnter(Collider other)
    {
        if (other.name == "Despawn")
        {
            
        }
    }
}
