//
//  SensorKit.swift
//  SensorKit
//
//  Created by Andrea Piscitello on 02/11/16.
//  Copyright © 2016 Andrea Piscitello. All rights reserved.
//

import Foundation
import CoreMotion

public class SensorKit {
    public static let instance = SensorKit()
    private init() {}
    
    let motionManager = CMMotionManager()
    
    public func getAccelerometerSensor(updateInterval: TimeInterval, handler: @escaping (Double, Double, Double) -> Void) -> AccelerometerSensor {
        return AccelerometerSensor(updateInterval: updateInterval, handler: handler)
    }
    
    
}
