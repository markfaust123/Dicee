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
    
    // Array with type: UIImage
    var dice = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    // activates when the view on phone loads up
    // (condition: when app first loads on phone)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Touch Up Action (TAP)
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // Generate random numbers within inclusive range
        var leftDiceNumber = Int.random(in: 0...5)
        var rightDiceNumber = Int.random(in: 0...5)
        
        // Change the dice on the screen
        diceImageView1.image = dice[leftDiceNumber]
        diceImageView2.image = dice[rightDiceNumber]
        
        // Print the current dice numbers
        print("Left Dice Number: \(leftDiceNumber + 1)")
        print("Right Dice Number: \(rightDiceNumber + 1)")

    }
    
}

