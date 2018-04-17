using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CameraWind : MonoBehaviour {

    public List<Sprite> wooshList;
    private Sprite currentSprite;
    public float rateOfWoosh;
    private float timer;

	// Use this for initialization
	void Start () {
        Application.targetFrameRate = 30;
	}
	
	// Update is called once per frame
	void Update () {
        WindWoosh();
	}

    private void WindWoosh()
    {
        if (Time.timeSinceLevelLoad - timer >= rateOfWoosh)
        {
            //Fixes timer to repvent more
            timer = Time.timeSinceLevelLoad;

            //Picks current sprite
            Sprite spriteToSpawn = wooshList[Random.Range(0, wooshList.Count)];
            //Repicks if same sprite was chosen
            if (spriteToSpawn == currentSprite)
            {
                return;
            }
            //Applies new sprite
            else
            {
                currentSprite = spriteToSpawn;
                transform.GetComponent<Image>().sprite = spriteToSpawn;
            }
        }
    }
}
