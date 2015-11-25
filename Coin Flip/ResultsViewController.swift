//
//  ResultsViewController.swift
//  Coin Flip
//
//  Created by Ashwin Iyer on 2015-11-23.
//  Copyright © 2015 Ashwin Iyer. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    //This message will be changed to:
        //"It wasn't ______, do the other thing! - If mismatch between prediction and outcome
        //"It was _____... you was right! - If prediction and outcome aligned
  
    @IBOutlet weak var message: UILabel!
   

    var messageSetter:String = ""

    var headsOrTails: HeadsOrTails = HeadsOrTails()
    
    //Eventually need to add an image of the outcome as well - will need and IBOutlet for the image view and to set it to the appropriate message

    override func viewDidLoad() {
        super.viewDidLoad()
 
        //Flip the Coin
        let result: Bool = headsOrTails.tossCoin()
        
        //Compare flip to guess
        let wasCorrect: Bool = headsOrTails.compare(headsOrTailsOutcome: result)
        
        //The firstMessage label will be filled based on the outcome and the prediction made in the Decision View
        if (wasCorrect){
            messageSetter = "You was right! Go ahead and DO THAT"
        }
        else{
            messageSetter = "NAHHH! Do that other thing!"
        }
        message.text = messageSetter
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
