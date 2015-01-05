//
//  Balloon.swift
//  99Balloons
//
//  Created by Nicholai de Guzman on 1/5/15.
//  Copyright (c) 2015 Nic. All rights reserved.
//

import Foundation


func getImage(myNum : Int) -> String {
    var retImage = ""
    
    switch myNum {
    case 0:
        retImage = "RedBalloon1.jpg"
    case 1:
        retImage = "RedBalloon2.jpg"
    case 2:
        retImage = "RedBalloon3.jpg"
    case 3:
        retImage = "RedBalloon4.jpg"
    default:
        retImage = "RedBalloon4.jpg"
    }
    
    return retImage
    
} //end func

struct Balloon {
    var balloonNum = 0
    var image = getImage(Int(arc4random_uniform(UInt32(3))))
}