using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class GameLogic : MonoBehaviour
{
    public float increment = 1.0f;
    public float score = 0.0f;
    private string stringScore;
    public GameObject canvas = null;

    // Use this for initialization
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {
        score += increment * Time.deltaTime;
        stringScore = score.ToString("F0");
        canvas.transform.GetChild(1).GetChild(1).GetComponent<TextMeshProUGUI>().SetText(stringScore);
    }
}
