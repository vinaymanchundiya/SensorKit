//
//  SyncSensingDelegate.swift
//  SensorKit
//
//  Created by Andrea Piscitello on 07/11/16.
//  Copyright © 2016 Andrea Piscitello. All rights reserved.
//

import Foundation

class SyncSensingDelegate : SensingDelegate {
    var managedSensors : [Sensor] = [Sensor]()
    
    func addSensor(_ sensor: Sensor) {
        managedSensors.append(sensor)
    }
    
    func start() {
        for s in managedSensors {
            s.start()
        }
    }
    
    func stop() {
        for s in managedSensors {
            s.stop()
        }
    }
}
