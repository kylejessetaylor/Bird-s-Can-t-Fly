using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnScript : MonoBehaviour
{
    public float moveSpeed = 10.0f;

    public GameObject startSpawn;
    public GameObject endSpawn;
    private float spawnerDistance;
    private float distBetweenNodes;

    public GameObject node;
    public int numberOfNodes = 5;
    [HideInInspector]
    public List<GameObject> spawners;
    public List<GameObject> cities = new List<GameObject>();

    // Use this for initialization
    void Awake()
    {
        spawnerDistance = Vector3.Distance(startSpawn.transform.position, endSpawn.transform.position);
        distBetweenNodes = spawnerDistance / numberOfNodes;

        //Places nodes at spawning location
        for (int i = 0; i < numberOfNodes; ++i)
        {
            // Node Position
            GameObject nodez = Instantiate(node, startSpawn.transform.position, Quaternion.identity);
            spawners.Add(nodez);
            nodez.transform.position = new Vector3(nodez.transform.position.x, nodez.transform.position.y, nodez.transform.position.z - (i * distBetweenNodes));

            // City Spawning
            GameObject city = Instantiate(cities[Random.Range(0, cities.Count)], nodez.transform.position, Quaternion.identity);
            city.transform.SetParent(nodez.transform);
        }
	}

    // Update is called once per frame
    void FixedUpdate()
    {
        Movement();
        Despawn();
    }

    private void Movement()
    {
        foreach (GameObject go in spawners)
        {
            go.transform.position = new Vector3(go.transform.position.x, go.transform.position.y, go.transform.position.z - moveSpeed * Time.deltaTime);
        }
    }

    private void Despawn()
    {
        foreach (GameObject node in spawners)
        {
            if (node.transform.position.z <= endSpawn.transform.position.z)
            {
                // Destroy the current city
                GameObject oldCity = node.transform.GetChild(0).gameObject;
                Destroy(oldCity);

                // Changes Position
                node.transform.position = startSpawn.transform.position;           

                // Set different city to be a child of node
                GameObject city = Instantiate(cities[Random.Range(0, cities.Count)], node.transform.position, Quaternion.identity);
                city.transform.SetParent(node.transform);
            }
        }
    }
}
