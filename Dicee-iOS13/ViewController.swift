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
    
    // activates when the view on phone loads up
    // (condition: when app first loads on phone)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // who.what = value
        // currently just setting the image property of the image view
        
         // diceImageView1.image = UIImage(imageLiteralResourceName: "DiceSix")
        
        // alternative syntax:
        // diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        
        // Challenge 1
        // changing alpha of the imageView1 (opacity)
        diceImageView1.alpha = 0.5
        
        // Challenge 2
        // changing the die on the right ot DiceTwo upon app load up
        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // Challenge 3
        // Changing first die
        diceImageView1.image = #imageLiteral(resourceName: "DiceFour")
        diceImageView1.alpha = 1
        
        // Changing second die
        diceImageView2.image = #imageLiteral(resourceName: "DiceFour")
        
        // Change confirmation to debug console
        print("Dice have been changed.")
    }
    
}

