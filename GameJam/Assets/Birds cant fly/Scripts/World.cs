using UnityEngine;

public class World : MonoBehaviour
{
    public float initialSpeed = 50.0f;
    public float maxVelocity = 200.0f;
    public float acceleration = 0.5f;

    private float currentVelocity;

    // Use this for initialization
    void Awake()
    {
        currentVelocity = initialSpeed;
    }
	
	// Update is called once per frame
	void FixedUpdate()
    {
        Accelerate();
	}

    private void Accelerate()
    {
        if (currentVelocity < maxVelocity)
        {
            currentVelocity += acceleration;
        }
        else
        {
            currentVelocity = maxVelocity;
        }

        transform.Rotate(Vector3.up, currentVelocity * Time.deltaTime);
    }
}
