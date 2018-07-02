//
//  calcHours.swift
//  window-shopper
//
//  Created by Kuba Żeligowski on 02.07.2018.
//  Copyright © 2018 huncfut. All rights reserved.
//

import Foundation

func calcHours(price: Double, wage: Double) -> Int {
    return Int(ceil(price / wage))
}
