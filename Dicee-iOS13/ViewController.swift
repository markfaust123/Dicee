//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Interface Builder Outlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 0
    var rightDiceNumber = 5
    
    // Array with type: UIImage
    var dice = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    // activates when the view on phone loads up
    // (condition: when app first loads on phone)
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageView2.image = #imageLiteral(resourceName: "DiceSix")
        print("Left Dice Number: \(leftDiceNumber + 1)")
        print("Right Dice Number: \(rightDiceNumber + 1)")
    }
    
    // Touch Up Action (TAP)
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        leftDiceNumber = (leftDiceNumber + 1) % 6

        rightDiceNumber = rightDiceNumber - 1
        if rightDiceNumber == -1 {
            rightDiceNumber = 5
        }
        
        diceImageView1.image = dice[leftDiceNumber]
        print("Left Dice Number: \(leftDiceNumber + 1)")
        diceImageView2.image = dice[rightDiceNumber]
        print("Right Dice Number: \(rightDiceNumber + 1)")
        print("\n")

    }
    
}

