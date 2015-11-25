//
//  DecisionViewController.swift
//  Coin Flip
//
//  Created by Ashwin Iyer on 2015-11-23.
//  Copyright © 2015 Ashwin Iyer. All rights reserved.
//

import UIKit

class DecisionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let headsOrTails: HeadsOrTails = HeadsOrTails()
        var choseHeads: Bool
        let resultsViewController = segue.destinationViewController as! ResultsViewController
        //Heads or Tails Selection
        if (segue.identifier == "TailsSegue"){
            //set the isHeads as false
            choseHeads = false
            headsOrTails.setChoice(choseHeads)
            resultsViewController.headsOrTails = headsOrTails
        }
        else{
            //set the isHeads as true
            choseHeads = true
            headsOrTails.setChoice(choseHeads)
            resultsViewController.headsOrTails = headsOrTails
        }
        
        
    }
    

}
