using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spawner : MonoBehaviour
{
    public string startSpawner;
    public string endSpawner;
    public List<GameObject> buildings = new List<GameObject>();

    private GameObject lastCity;

	// Use this for initialization
	void Awake()
    {
        GameObject firstCity = buildings[Random.Range(0, buildings.Count)];
        BuildCity(firstCity);
        lastCity = firstCity;
    }
	
	// Update is called once per frame
	void Update()
    {
		
	}

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Start")
        {
            GameObject newCity = buildings[Random.Range(0, buildings.Count)];
            BuildCity(newCity);
            lastCity = newCity;
        }

        if (other.tag == "End")
        {
            if (lastCity)
            {
                TrashMan.despawn(lastCity);
            }
        }
    }

    public void BuildCity(GameObject city)
    {
        TrashMan.spawn(city, transform.position, Quaternion.Euler(Vector3.zero));
    }
}
