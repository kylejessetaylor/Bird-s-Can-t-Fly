using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Player : MonoBehaviour
{
    // the players rigid body 
    private Rigidbody rb;
    // speed that the player moves
    public float speed = 1;
    // setSpeed store the original speed
    public float setSpeed = 0;
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


    // Use this for initialization
    void Start()
    {
        // assigning the rigidbody component
        rb = GetComponent<Rigidbody>();

        // set the original speed
        setSpeed = speed;
    }

    // Update is called once per frame
    void Update()
    {
        rb.velocity = rb.velocity * gradualSlowSpeed;
        Debug.Log(rb.velocity);

        // if the right btn was pressed
        if (rightFlapping)
            RightFlap();

        // if the left btn was pressed
        if (leftFlapping)
            LeftFlap();
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

    // move the player to the right
    public void RightFlap()
    {
        if (rightFlapCount <= rightFlapTime)
        {
            rightFlapping = true;
            rightFlapCount += Time.deltaTime;
            speed += speedIncrement * Time.deltaTime;
            rb.AddForce(rb.transform.right * speed * 50.0f, ForceMode.Force);
        }
        else if (rightFlapCount > rightFlapTime)
        {
            speed = 1.5f;
            rightFlapCount = 0.0f;
            rightFlapping = false;
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

    // move the player to the left
    public void LeftFlap()
    {
        if (leftFlapCount <= leftFlapTime)
        {
            leftFlapping = true;
            leftFlapCount += Time.deltaTime;
            speed += speedIncrement * Time.deltaTime;
            rb.AddForce(-rb.transform.right * speed * 50.0f, ForceMode.Force);
        }
        else if (leftFlapCount > leftFlapTime)
        {
            speed = 1.5f;
            leftFlapCount = 0.0f;
            leftFlapping = false;
        }
    }
}
