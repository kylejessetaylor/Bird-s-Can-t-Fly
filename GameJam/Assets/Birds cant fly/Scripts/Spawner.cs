using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spawner : MonoBehaviour
{
    public string startSpawner;
    public string endSpawner;
    public List<GameObject> cities = new List<GameObject>();

    private GameObject lastCity;

	// Use this for initialization
	void Start()
    {
        GameObject firstCity = Instantiate(cities[Random.Range(0, cities.Count)]);       
        BuildCity(firstCity);
        firstCity.transform.SetParent(transform, false);
        lastCity = firstCity;
    }

    void Update()
    {
        SpawnAndDespawn();
        CityPosition();
    }

    private void SpawnAndDespawn()
    {
        // If it hits the spawn trigger
        if (GetComponentInChildren<Node>().NodeTrigger() == 1)
        {
            GameObject newCity = Instantiate(cities[Random.Range(0, cities.Count)]);
            BuildCity(newCity);
            //newCity.transform.SetParent(transform, false);
            lastCity = newCity;
        }

        // If it hits the despawn trigger
        if (GetComponentInChildren<Node>().NodeTrigger() == 2)
        {
            if (lastCity)
            {
                TrashMan.despawn(lastCity);
            }
        }
    }

    public void BuildCity(GameObject city)
    {
        if (city)
        {
            //Debug.Log(city.name + " " + transform.GetChild(0).gameObject.name);
            TrashMan.spawn(city, transform.GetChild(0).position, Quaternion.Euler(Vector3.zero));
        }
    }

    private void CityPosition()
    {
        for (int i = 0; i <= (transform.childCount - 1); ++i)
        {
            Transform node = transform.GetChild(i);
            
            if (node.transform.childCount > 0)
            {
                Transform city = node.transform.GetChild(0);
                city.position = node.position;
                city.localRotation = node.localRotation;
            }
        }
    }
}
