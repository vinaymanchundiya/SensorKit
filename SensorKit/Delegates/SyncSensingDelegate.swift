//
//  SyncSensingDelegate.swift
//  SensorKit
//
//  Created by Andrea Piscitello on 07/11/16.
//  Copyright © 2016 Andrea Piscitello. All rights reserved.
//

import Foundation

// TODO: seriously public???
public class SyncSensingDelegate : SensingDelegate {
    public var managedSensors = [Sensor]()
    
    public func addSensor(_ sensor: Sensor) {
        managedSensors.append(sensor)
    }
    
    public func start() {
        for s in managedSensors {
            s.start()
        }
    }
    
    public func stop() {
        for s in managedSensors {
            s.stop()
        }
    }
    
    public init() {}
}
