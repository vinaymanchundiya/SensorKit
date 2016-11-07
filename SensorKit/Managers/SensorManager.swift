//
//  SensorManager.swift
//  SensorKit
//
//  Created by Andrea Piscitello on 07/11/16.
//  Copyright © 2016 Andrea Piscitello. All rights reserved.
//

import Foundation

public protocol SensorManager {
    var sensingDelegate : SensingDelegate {get}
    
    func addSensor(_ sensor: Sensor)
    
    func startSensing()
    
    func stopSensing()
}

public extension SensorManager {
    /// It defaults to Synchronous implementation
    var sensingDelegate : SensingDelegate {
        return SyncSensingDelegate()
    }
    
    func addSensor(_ sensor: Sensor) {
        sensingDelegate.addSensor(sensor)
    }
    
    func startSensing() {
        sensingDelegate.start()
    }
    
    func stopSensing() {
        sensingDelegate.stop()
    }
}
