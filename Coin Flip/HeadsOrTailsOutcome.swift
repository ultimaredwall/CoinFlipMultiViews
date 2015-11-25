//
//  HeadsOrTailsOutcome.swift
//  Coin Flip
//
//  Created by Ashwin Iyer on 2015-11-23.
//  Copyright © 2015 Ashwin Iyer. All rights reserved.
//

import Foundation

//For the RNG
import GameKit

//This class will need to do the following 3 things:

//1. Handle the user's H/T selection
//2. Produce a H/T outcome based on RNG
//3. Compare the selecion to the outcome and return a Bool (i.e. isCorrectGuess)

class HeadsOrTails{
    //Variable to handle the user selection
    var choseHeads: Bool = true //initialize to true
    
    init(){
    }
    
    func setChoice(choseHeads: Bool){
        self.choseHeads = choseHeads
    }
    
    
    func tossCoin() -> Bool{
        let randomNumber = GKRandomSource.sharedRandom().nextBool()
        return randomNumber
    }
    
    func compare(headsOrTailsOutcome outcome: Bool)->Bool{
        //If guess = outcome
        if (outcome == self.choseHeads){
            return true
        }
        //If guess != outcome
        else{
            return false
        }
        
    }
    
}
