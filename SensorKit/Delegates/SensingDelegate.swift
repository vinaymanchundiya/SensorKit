//
//  SensingDelegate.swift
//  SensorKit
//
//  Created by Andrea Piscitello on 07/11/16.
//  Copyright © 2016 Andrea Piscitello. All rights reserved.
//

import Foundation

/**
    Delegate of SensorManger protocol.
    It contains the logic for handling sensors relieving the class
    that will conform to SensorManager to do that.
 **/
public protocol SensingDelegate {
    
    var managedSensors : [Sensor] {get set}
    
    func start()
    
    func stop()
    
    func addSensor(_ sensor: Sensor)
}
