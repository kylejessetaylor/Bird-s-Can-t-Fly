using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NodeScript : MonoBehaviour {

    public float rotateRate = 5f;
    [HideInInspector]
    public float xRot;

    // Use this for initialization
    void Awake()
    {
        xRot = 70.0f;
    }

    // Update is called once per frame
    void Update()
    {
        if (transform.GetChild(0).eulerAngles.x > 0 && transform.GetChild(0).eulerAngles.x < 91)
        {
            xRot -= rotateRate * Time.deltaTime;
            Vector3 rotate = new Vector3(xRot, 0, 0);
            transform.GetChild(0).rotation = Quaternion.Euler(rotate);

            //float xRot = Mathf.Lerp(90, 0, rotateRate * Time.deltaTime);
            //Vector3 rotate = new Vector3(xRot, 0, 0);
            //transform.GetChild(0).rotation = Quaternion.Euler(rotate);
        }
        else
        {
            xRot = 70.0f;
        }
    }
}
