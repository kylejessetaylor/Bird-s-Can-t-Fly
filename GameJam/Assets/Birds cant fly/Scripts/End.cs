using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class End : MonoBehaviour
{
    public Player player = null;
    public float timeToWaitAfterThePenguinDiedBeforeRestartingTheGame = 5.0f;
    private float timer;
    private bool ticking = true;

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        if (player.GetComponent<Player>().died)
        {
            if (ticking)
            {
                timer = Time.unscaledTime;
                ticking = !ticking;
            }
            if (Time.unscaledTime - timer >= timeToWaitAfterThePenguinDiedBeforeRestartingTheGame)
            {
                SceneManager.LoadScene(0);
                player.GetComponent<Player>().died = false;
            }

        }

    }
    IEnumerator Example()
    {
        yield return new WaitForSeconds(timeToWaitAfterThePenguinDiedBeforeRestartingTheGame);
    }
}
