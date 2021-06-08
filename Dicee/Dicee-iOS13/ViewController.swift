//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Shaurya Gulati on 12/04/2021.
//  All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //IBOutlet allows me to reference a UI Element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
//        Could have also done this like below:
//        diceImageView1.image = diceArray[Int.random(in: 0...5)]
//        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
      
        
    }
    
}

