using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.UI;

public class MenuManager : MonoBehaviour {


    public float fadeRate;
    public float launchDelay;

    [Header("End Game")]
    public TextMeshProUGUI deadScore;
    public GameObject penguinsDancing;

    [Header("Score")]
    private float scoreN;
    public float scoreMultiplier;
    [HideInInspector]
    public bool scoreCounting = true;
    public GameObject scorePos;

    [Header("MainMenu")]
    public GameObject mainMenu;
    public TextMeshProUGUI title;
    public GameObject startButton;

    [Header("InGameUI")]
    public GameObject inGameMenu;
    public GameObject windSprites;
    public TextMeshProUGUI score;
    public GameObject buttons;

	// Use this for initialization
	void Awake () {
        //Sets timescale to 0
        Time.timeScale = 0;

        inGameMenu.SetActive(false);

        scoreN = 0;

        penguinsDancing.SetActive(false);
        deadScore.gameObject.SetActive(false);

    }
	
	// Update is called once per frame
	void Update () {

        //Updates Score
        Score();

        //Only occurs on GameStart
        MenuFading();

        //Occurs after MenuFading Finishes\
        CoundDownToLaunch();
    }

    #region StartGame

    private bool startingGame = false;

    public void StartGame()
    {
        startingGame = true;
    }

    public void MenuFading()
    {
        if (startingGame == true)
        {
            //Starts animations
            Time.timeScale = 1;

            //Fades Main Menu
            Color titleC = title.GetComponent<TextMeshProUGUI>().color;
            Color startBC = startButton.GetComponent<Image>().color;
            Color startTC = startButton.transform.GetChild(0).GetComponent<TextMeshProUGUI>().color;

            if (startTC.a > 0)
            {
                titleC.a -= fadeRate * Time.unscaledDeltaTime;
                startBC.a -= fadeRate * Time.unscaledDeltaTime;
                startTC.a -= fadeRate * Time.unscaledDeltaTime;
            }
            else
            {
                titleC.a = 0;
                startBC.a = 0;
                startTC.a = 0;

                //Checks startCountdown
                startCountDown = true;
                startingGame = false;

                //Sets Timer
                timer = Time.unscaledTime;
            }

            title.GetComponent<TextMeshProUGUI>().color = titleC;
            startButton.GetComponent<Image>().color = startBC;
            startButton.transform.GetChild(0).GetComponent<TextMeshProUGUI>().color = startTC;

        }
    }

    private bool startCountDown = false;
    private float timer;

    private void CoundDownToLaunch()
    {
        //Starts after fade finishes
        if (startCountDown == true)
        {
            //Checks for delayTimer
            if (Time.unscaledTime - timer >= launchDelay)
            {
                Launch();
            }
        }
    }

    #endregion

    #region Score

    private void Score()
    {
        if (scoreCounting) {
            scoreN += scoreMultiplier * Time.deltaTime;
            score.text = Mathf.Round(scoreN).ToString();
            deadScore.text = score.text;
        }
    }

    #endregion

    //Gameplay Starts Here
    private void Launch()
    {
        inGameMenu.SetActive(true);
    }
}
