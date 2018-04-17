using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Node : MonoBehaviour
{
    private int trig;

    void Awake()
    {
        trig = 0;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Start")
        {
            trig = 1;
        }

        if (other.tag == "End")
        {
            trig = 2;
        }
    }

    public int NodeTrigger()
    {
        if (trig != 0)
        {
            return trig;
        }

        return 0;
    }
}
