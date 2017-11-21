//
//  CoreMotion.swift
//  Accellero
//
//  Created by Anthony GRIFFON on 16/11/2017.
//  Copyright © 2017 Anthony GRIFFON. All rights reserved.
//

import CoreMotion

class MotionHelper: NSObject {
    static let sharedInstance = MotionHelper();
    
    let motionManager = CMMotionManager()

    override init() {
        super.init()
    }
    
    func startProcess() {
        motionManager.startAccelerometerUpdates()
    }
    
    
}
