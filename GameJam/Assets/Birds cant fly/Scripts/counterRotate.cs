﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class counterRotate : MonoBehaviour {

    Quaternion rotation;
    void Awake()
    {
        rotation = transform.rotation;
    }
    void LateUpdate()
    {
        transform.rotation = rotation;
    }
}
