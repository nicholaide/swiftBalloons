//
//  Balloon.swift
//  99Balloons
//
//  Created by Nicholai de Guzman on 1/5/15.
//  Copyright (c) 2015 Nic. All rights reserved.
//

import Foundation
//solution has import UIKit so you can do
// image = UIImage(named:"")

func getImage(myNum : Int) -> String {
    var retImage = ""
    
    //solution has no case 0; it uses default for this case
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
        retImage = "RedBalloon1.jpg"
    }
    
    return retImage
    
} //end func

struct Balloon {
    var balloonNum = 0
    //we should get 0 to 3 back?
    var image = getImage(Int(arc4random_uniform(UInt32(4))))
}