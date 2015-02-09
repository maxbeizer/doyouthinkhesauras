//
//  ViewController.swift
//  Doyouthinkhesauras
//
//  Created by Max Beizer on 2/8/15.
//  Copyright (c) 2015 Max Beizer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var positionSlider: UISlider!
    @IBOutlet weak var grant: UIImageView!
    @IBOutlet weak var trex: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func silderValueChange(sender: UISlider) {
        let duration = 2.0
        let delay = 0.0
        let options = UIViewKeyframeAnimationOptions.CalculationModeLinear
        UIView.animateKeyframesWithDuration(duration, delay: delay, options: options, animations: {
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 3/3, animations: {
                self.grant.transform = CGAffineTransformMakeTranslation(CGFloat(self.positionSlider.value * 100), CGFloat(0))
                self.trex.transform = CGAffineTransformMakeTranslation(CGFloat(self.positionSlider.value * 275), CGFloat(0))
            })
        }, completion: {finished in
            // do something?
        })
    }
}

