using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Player : MonoBehaviour
{
    // animator
    Animator anim;
    // the players rigid body 
    private Rigidbody rb;
    // speed that the player moves
    public float speed = 1.0f;
    // setSpeed store the original speed
    private float setSpeed = 0.0f;
    // how the player slows down after 
    public float gradualSlowSpeed = 0.9f;
    // if the player pressed the right flap
    private bool rightBtnPress = false;
    // if the player pressed the left flap
    private bool leftBtnPress = false;
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

    // are the controls locked
    private bool lockControls = false;
    // did the player die
    [HideInInspector]
    public bool died = false;

    // Use this for initialization
    void Start()
    {
        // assigning the rigidbody component
        rb = GetComponent<Rigidbody>();

        // set the original speed
        setSpeed = speed;

        anim = GetComponentInChildren<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
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
        // level the bird out after tilting
        LevelOutAndPreventOverTilt();
    }

    // if the screen btn UI element was pressed
    public void RightClick()
    {
        rightFlapping = true;
        rightFlapCount = 0.0f;

        if (rb.velocity.x < 0)
        {
            leftFlapCount = leftFlapTime;
            rb.velocity = Vector3.zero;
        }
    }

    // if the screen btn UI element was pressed
    public void LeftClick()
    {
        leftFlapping = true;
        leftFlapCount = 0.0f;

        if (rb.velocity.x > 0)
        {
            rightFlapCount = rightFlapTime;
            rb.velocity = Vector3.zero;
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
            rb.AddForce(rb.transform.right * speed * 50.0f, ForceMode.Force);
        }
        else if (rightFlapCount > rightFlapTime)
        {
            speed = setSpeed;
            rightFlapCount = 0.0f;
            rightFlapping = false;
            anim.SetBool("MovingLeft", false);
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
            rb.AddForce(-rb.transform.right * speed * 50.0f, ForceMode.Force);
        }
        else if (leftFlapCount > leftFlapTime)
        {
            speed = setSpeed;
            leftFlapCount = 0.0f;
            leftFlapping = false;
            anim.SetBool("MovingRight", false);
        }
    }

    // tilt right
    void BankRight()
    {
        rb.transform.eulerAngles += new Vector3(0.0f, 0.0f, -bankSpeed/10);
    }

    // tilt left
    void BankLeft()
    {
        rb.transform.eulerAngles += new Vector3(0.0f, 0.0f, bankSpeed/10);
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

    private void OnCollisionEnter(Collision collision)
    {
        lockControls = true;
        anim.SetBool("Splat", true);
        died = true;
    }
}
