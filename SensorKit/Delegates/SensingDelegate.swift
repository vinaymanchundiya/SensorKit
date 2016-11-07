//
//  SensingDelegate.swift
//  SensorKit
//
//  Created by Andrea Piscitello on 07/11/16.
//  Copyright © 2016 Andrea Piscitello. All rights reserved.
//

import Foundation

public protocol SensingDelegate {
    
    var managedSensors : [Sensor] {get set}
    
    func start()
    
    func stop()
    
    func addSensor(_ sensor: Sensor)
}
