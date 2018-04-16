using UnityEngine;

public class Menu : MonoBehaviour
{
    public float delay = 1.0f;

	// Use this for initialization
	void Awake()
    {
        Time.timeScale = 0.0f;
	}
	
	// Update is called once per frame
	void FixedUpdate()
    {
        StartGame();
	}

    public void StartGame()
    {
        delay -= Time.deltaTime;

        if (delay <= 0.0f)
        {
            Time.timeScale = 1.0f;
        }
    }
}
