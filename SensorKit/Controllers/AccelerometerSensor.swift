//
//  AccelerometerSensor.swift
//  SensorKit
//
//  Created by Andrea Piscitello on 02/11/16.
//  Copyright © 2016 Andrea Piscitello. All rights reserved.
//

import Foundation

public class AccelerometerSensor {
    let manager = SensorKit.instance.motionManager
    let handler : (Double, Double, Double) -> Void
    //convenience init(interval: TimeInterval, handler: ((x: Double, y: Double, z: Double) -> ())?) {}
    
    init(updateInterval: TimeInterval, handler: @escaping (Double, Double, Double) -> Void) {
        manager.accelerometerUpdateInterval = updateInterval
        self.handler = handler
    }
    
    public func start() {
        if manager.isAccelerometerAvailable {
            manager.startAccelerometerUpdates(to: OperationQueue(), withHandler: {
                accelerometerData, error in
                guard let acceleration = accelerometerData?.acceleration else {
                    return
                }
                self.handler(acceleration.x, acceleration.y, acceleration.z)
            })
        }
        else {
            NSLog("Accelerometer is not available.")
        }
    }
    
    public func stop() {
        manager.stopAccelerometerUpdates()
    }
    
    
}
