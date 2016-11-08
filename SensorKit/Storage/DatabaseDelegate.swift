//
//  DatabaseDelegate.swift
//  SensorKit
//
//  Created by Andrea Piscitello on 08/11/16.
//  Copyright © 2016 Andrea Piscitello. All rights reserved.
//

import Foundation

public protocol DatabaseDelegate {
    // TODO: change to JSON serializable or similar
    func store(object: Any)
}
