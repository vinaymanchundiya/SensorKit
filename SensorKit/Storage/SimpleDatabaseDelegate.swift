//
//  SimpleDatabaseDelegate.swift
//  SensorKit
//
//  Created by Andrea Piscitello on 08/11/16.
//  Copyright © 2016 Andrea Piscitello. All rights reserved.
//

import Foundation

// TODO: think about Access level
class SimpleDatabaseDelegate : DatabaseDelegate {
    func store(object: Any) {
        print(object)
    }
    
    init() {
        
    }
}
