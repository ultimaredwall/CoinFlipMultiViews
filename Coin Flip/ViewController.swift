//
//  ViewController.swift
//  Coin Flip
//
//  Created by Ashwin Iyer on 2015-11-23.
//  Copyright © 2015 Ashwin Iyer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewOutlet: UIView!
    
    @IBOutlet weak var tapAnywhereLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tapAnywhereLabel.alpha = 0;
        [UIView .animateKeyframesWithDuration(1.0, delay: 1.0, options: UIViewKeyframeAnimationOptions.Repeat, animations: {self.tapAnywhereLabel.alpha=1}, completion: nil)]

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

