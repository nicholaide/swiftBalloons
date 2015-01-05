//
//  ViewController.swift
//  99Balloons
//
//  Created by Nicholai de Guzman on 1/5/15.
//  Copyright (c) 2015 Nic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var balloonImage: UIImageView!
    @IBOutlet weak var balloonNumLabel: UILabel!
    
    var theBalloons:[Balloon] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for i in 0...98 {
            var newB = Balloon()
            newB.balloonNum = Int(arc4random_uniform(UInt32(500)))
            theBalloons.append(newB)
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextButton(sender: UIBarButtonItem) {
        
        var randBalloon = theBalloons[Int(arc4random_uniform(UInt32(98)))]
        
        UIView.transitionWithView(self.view,duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations:
            {
                self.balloonImage.image = UIImage(named: randBalloon.image)
                self.balloonNumLabel.text = "\(randBalloon.balloonNum)"
                
            }, completion: { (finished: Bool) -> () in })
    }
    

}

