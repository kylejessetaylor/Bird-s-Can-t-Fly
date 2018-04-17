using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class counterRotate : MonoBehaviour
{
    private float yPos = 0.0f;

    Quaternion rotation;
    void Awake()
    {
        rotation = transform.rotation;
    }

    private void Start()
    {
        yPos = transform.position.y;
    }

    void LateUpdate()
    {
        transform.rotation = rotation;
    }

    private void Update()
    {
        transform.position = new Vector3(transform.parent.transform.position.x, yPos, transform.position.z);
    }
}
