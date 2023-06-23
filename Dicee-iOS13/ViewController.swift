//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    
    // activates when the view on phone loads up
    // (condition: when app first loads on phone)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // who.what = value
        // currently just setting the image property of the image view
        /*
         diceImageView1.image = UIImage(imageLiteralResourceName: "DiceSix")
         */
        // alternative syntax
        // diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        
        // changing alpha of the imageView1 (opacity)
        diceImageView1.alpha = 0.5
    }
    
    
}

