//
//  AbstractSensor.swift
//  SensorKit
//
//  Created by Andrea Piscitello on 02/11/16.
//  Copyright © 2016 Andrea Piscitello. All rights reserved.
//

import Foundation

protocol AbstractSensor {
    
    /**
        Initialization for synchronous application.
    */
    //init(interval: TimeInterval, handler: Any)
    
    /**
        Initialization for asynchronous application.
    */
    init(start: NSNotification, end: NSNotification)
    
    /**
        Start sensor data retrieving.
    */
    func start()
    
    /**
        Stop sensor data retrieving.
     */
    func stop()
    
}
