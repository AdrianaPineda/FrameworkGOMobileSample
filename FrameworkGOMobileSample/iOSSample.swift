//
//  iOSSample.swift
//  FrameworkGOMobileSample
//
//  Created by Adriana Pineda on 5/24/16.
//  Copyright © 2016 Adriana Pineda. All rights reserved.
//

import UIKit

public class iOSSample: NSObject {

    public class func sum(a: Int32, b: Int32) -> Int32 {
        return GoSampleSum(a, b)
    }

    public class func initSDK() {
        GoSampleInit()
    }

    public class func crashSDK() {
        GoSampleCrash()
    }

}
