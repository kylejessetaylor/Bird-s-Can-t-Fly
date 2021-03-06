﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Player : MonoBehaviour
{
    // animator
    Animator anim;
    // the players rigid body 
    private Rigidbody rb;
    // particle death system
    //public ParticleSystem ps = null;
    // speed that the player moves
    public float speed = 1.0f;
    // pick up speed velocity
    private float pickUpSpeed = 1.0f;
    // pick up speed velocity incement
    public float pickUpSpeedIncrement = 1.5f;
    // max velocity
    public float maxVelocity = 50.0f;
    // setSpeed store the original speed
    private float setSpeed = 0.0f;
    // how the player slows down after 
    public float gradualSlowSpeed = 0.9f;
    // is the bird flapping
    private bool rightFlapping = false;
    private bool leftFlapping = false;

    // the speed at which the player gains speed
    public float speedIncrement = 0.1f;
    // time the player gains speed for after a tap
    public float rightFlapTime = 0.5f;
    // counting to the time after a tap
    private float rightFlapCount = 0.0f;
    // time the player gains speed for after a tap
    public float leftFlapTime = 0.5f;
    // counting to the time after a tap
    private float leftFlapCount = 0.0f;

    // how far the bird can tilt to the right
    public float tiltRightLimit = 45.0f;
    // how far the bird can tilt to the left
    public float tiltLeftLimit = 315.0f;
    // speed of which the player banks
    public float bankSpeed = 1.0f;
    // level out speed
    public float levelOutSpeed = 10.0f;
    // did the player die
    [HideInInspector]
    public bool died = false;

    // are the controls locked
    private bool lockControls = false;

    // scene manager
    private GameObject sceneManager;

    //you know
    private bool bOnce = true;

    // Use this for initialization
    void Start()
    {
        
        // stop the particle system from playing
        //ps.Stop();

        sceneManager = GameObject.Find("GameManager");

        // assigning the rigidbody component
        rb = GetComponent<Rigidbody>();

        // set the original speed
        setSpeed = speed;

        anim = GetComponentInChildren<Animator>();

        //Music cutting
        StartCoroutine(WaitForMusic(musicDelay));
    }
    public float musicDelay = 3f;

    IEnumerator WaitForMusic(float time)
    {
        yield return new WaitForSecondsRealtime(time);
        EnableMusic();
    }
    public void EnableMusic()
    {
        //Music swap
        foreach (AudioSource song in music.GetComponents<AudioSource>())
        {
            song.enabled = true;
        }
    }

    // Update is called once per frame
    void Update()
    {
        transform.position = new Vector3(transform.position.x, 12.2f, transform.position.z);

        rb.velocity = rb.velocity * gradualSlowSpeed;

        if (!lockControls)
        {
            // if the right btn was pressed
            if (rightFlapping)
                RightFlap();

            // if the left btn was pressed
            if (leftFlapping)
                LeftFlap();
        }

        // dont let the player go too はやい
        LimitMaxSpeed();

        // level the bird out after tilting
        LevelOutAndPreventOverTilt();

        if (died)
            Dead();
    }

    void LimitMaxSpeed()
    {
        if (rb.velocity.x > maxVelocity)
            rb.velocity = new Vector3(maxVelocity, rb.velocity.y, rb.velocity.z);
        if (rb.velocity.x < -maxVelocity)
            rb.velocity = new Vector3(-maxVelocity, rb.velocity.y, rb.velocity.z);
    }

    // if the screen btn UI element was pressed
    public void RightClick()
    {
        //Audio
        if (!flap.isPlaying)
        {
            flap.Play();
        }

        rightFlapping = true;
        rightFlapCount = 0.0f;

        pickUpSpeed += pickUpSpeedIncrement;

        if (rb.velocity.x < 0)
        {
            leftFlapCount = leftFlapTime;
            pickUpSpeed = 1.0f;
            //rb.velocity = Vector3.zero;
        }
    }

    // if the screen btn UI element was pressed
    public void LeftClick()
    {
        //Audio
        if (!flap.isPlaying)
        {
            flap.Play();
        }

        leftFlapping = true;
        leftFlapCount = 0.0f;

        pickUpSpeed += pickUpSpeedIncrement;

        if (rb.velocity.x > 0)
        {
            rightFlapCount = rightFlapTime;
            pickUpSpeed = 1.0f;
            //rb.velocity = Vector3.zero;
        }
    }

    // move the player to the right
    public void RightFlap()
    {
        if (rightFlapCount <= rightFlapTime)
        {
            BankRight();
            anim.SetBool("MovingLeft", true);
            rightFlapping = true;
            rightFlapCount += Time.deltaTime;
            speed += speedIncrement * Time.deltaTime;
            rb.AddForce(rb.transform.right * (speed + pickUpSpeed) * 50.0f, ForceMode.Force);
        }
        else if (rightFlapCount > rightFlapTime)
        {
            speed = setSpeed;
            rightFlapCount = 0.0f;
            rightFlapping = false;
            anim.SetBool("MovingLeft", false);
            pickUpSpeed = 1.0f;
        }
    }

    // move the player to the left
    public void LeftFlap()
    {
        if (leftFlapCount <= leftFlapTime)
        {
            BankLeft();
            anim.SetBool("MovingRight", true);
            leftFlapping = true;
            leftFlapCount += Time.deltaTime;
            speed += speedIncrement * Time.deltaTime;
            rb.AddForce(-rb.transform.right * (speed + pickUpSpeed) * 50.0f, ForceMode.Force);
        }
        else if (leftFlapCount > leftFlapTime)
        {
            speed = setSpeed;
            leftFlapCount = 0.0f;
            leftFlapping = false;
            anim.SetBool("MovingRight", false);
            pickUpSpeed = 1.0f;
        }
    }

    // tilt right
    void BankRight()
    {
        rb.transform.eulerAngles += new Vector3(0.0f, 0.0f, -bankSpeed / 10);
    }

    // tilt left
    void BankLeft()
    {
        rb.transform.eulerAngles += new Vector3(0.0f, 0.0f, bankSpeed / 10);
    }

    void LevelOutAndPreventOverTilt()
    {
        // if tilted to the right, then correct and tilt to the left
        if (rb.transform.eulerAngles.z < 270.0f)
            rb.transform.eulerAngles += new Vector3(0.0f, 0.0f, -levelOutSpeed) * Time.deltaTime;

        // tilted too far right
        if (rb.transform.eulerAngles.z > tiltRightLimit && rb.transform.eulerAngles.z < 180.0f)
            rb.transform.eulerAngles = new Vector3(0.0f, 0.0f, tiltRightLimit);

        // if tilted to the left, then correct and tilt to the right
        if (rb.transform.eulerAngles.z > 90.0f)
            rb.transform.eulerAngles += new Vector3(0.0f, 0.0f, levelOutSpeed) * Time.deltaTime;

        // tilted too far left
        if (rb.transform.eulerAngles.z < tiltLeftLimit && rb.transform.eulerAngles.z > 180.0f)
            rb.transform.eulerAngles = new Vector3(0.0f, 0.0f, tiltLeftLimit);
    }

    private void Dead()
    {
        // play the particle system once
        if (bOnce)
        {
            //ps.Play();
            bOnce = false;
        }

        // tilted too far right
        if (rb.transform.eulerAngles.z < tiltRightLimit && rb.transform.eulerAngles.z > 1.0f)
        {
            transform.eulerAngles = new Vector3(0.0f, 0.0f, 0.0f);
            //rb.transform.eulerAngles += new Vector3(0.0f, 0.0f, 45.0f) * Time.deltaTime;
        }

        // tilted too far left
        if (rb.transform.eulerAngles.z > tiltLeftLimit && rb.transform.eulerAngles.z < 359.0f)
        {
            transform.eulerAngles = new Vector3(0.0f, 0.0f, 0.0f);
            //rb.transform.eulerAngles += new Vector3(0.0f, 0.0f, -45.0f) * Time.deltaTime;
        }
    }

    public AudioSource death;
    public AudioSource flap;
    public GameObject music;

    private void OnCollisionEnter(Collision collision)
    {
        if (Time.timeSinceLevelLoad > 1 && collision.gameObject.tag != "Trigger")
        {
            lockControls = true;
            died = true;

            //Animations
            anim.SetBool("Splat", true);
            particle.Play();

            //Audio Death
            death.Play();
            //Turns off Music
            music.SetActive(false);

            //Building Movement disables
            sceneManager.GetComponent<SpawnScript>().enabled = false;
            Time.timeScale = 0;

            sceneManager.GetComponent<MenuManager>().windSprites.SetActive(false);
            sceneManager.GetComponent<MenuManager>().enabled = false;

            ScoreLerp();

            sceneManager.GetComponent<MenuManager>().penguinsDancing.SetActive(true);
            sceneManager.GetComponent<MenuManager>().deadScore.gameObject.SetActive(true);
            sceneManager.GetComponent<MenuManager>().score.enabled = false;
        }
    }
    public ParticleSystem particle;

    [Header("Score Transition")]
    public float lerpRate;
    private void ScoreLerp()
    {
        RectTransform score = sceneManager.GetComponent<MenuManager>().score.GetComponent<RectTransform>();
        RectTransform lerpPos = sceneManager.GetComponent<MenuManager>().scorePos.GetComponent<RectTransform>();

        score.transform.localPosition = Vector2.Lerp(score.transform.localPosition, lerpPos.transform.localPosition, lerpRate * Time.unscaledDeltaTime);
    }
}
