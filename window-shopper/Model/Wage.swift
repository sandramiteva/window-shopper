//
//  Wage.swift
//  window-shopper
//
//  Created by Sandra on 12/4/17.
//  Copyright © 2017 Sandra. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
