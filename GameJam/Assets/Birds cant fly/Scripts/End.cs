using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class End : MonoBehaviour
{
    public Player player = null;
    public float timeToWaitAfterThePenguinDiedBeforeRestartingTheGame = 5.0f;
    private float timer;
    private bool ticking = true;

    // Use this for initialization
    void Awake()
    {
        restartButton.SetActive(false);
        restartButton.GetComponent<Image>().enabled = false;
        restartButton.GetComponent<Button>().enabled = false;
        restartButton.GetComponent<Button>().interactable = false;

    }

    // Update is called once per frame
    void Update()
    {
        Player pengu = player.GetComponent<Player>();
        if (pengu.died)
        {
            //Can Press Button
            restartButton.SetActive(true);
            restartButton.GetComponent<Image>().enabled = true;
            restartButton.GetComponent<Button>().enabled = true;
            restartButton.GetComponent<Button>().interactable = true;

            if (ticking)
            {
                timer = Time.unscaledTime;
                ticking = !ticking;
            }
            if (Time.unscaledTime - timer >= timeToWaitAfterThePenguinDiedBeforeRestartingTheGame)
            {
                player.GetComponent<Player>().died = false;
                ReloadScene(0);
            }

        }

    }

    public GameObject restartButton;

    public void ReloadScene(int sceneNumber)
    {
        SceneManager.LoadScene(sceneNumber);
    }
}
