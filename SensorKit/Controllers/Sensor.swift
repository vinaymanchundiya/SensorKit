//
//  AbstractSensor.swift
//  SensorKit
//
//  Created by Andrea Piscitello on 02/11/16.
//  Copyright © 2016 Andrea Piscitello. All rights reserved.
//

import Foundation

public protocol Sensor {
    /**
        Initialization.
    */
    init(updateInterval: TimeInterval, handler: @escaping (Double, Double, Double) -> Void)
    
    /**
        Start sensor data retrieving.
    */
    func start()
    
    /**
        Stop sensor data retrieving.
     */
    func stop()
    
}
