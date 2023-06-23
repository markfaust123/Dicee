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
    
    var leftDiceNumber = 1
    var dice = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    // activates when the view on phone loads up
    // (condition: when app first loads on phone)
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // Touch Up Action (TAP)
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // put dice images into an array
        // Array with type: UIImage
        diceImageView1.image = dice[leftDiceNumber]
        
        leftDiceNumber = (leftDiceNumber + 1) % 6

    }
    
}

