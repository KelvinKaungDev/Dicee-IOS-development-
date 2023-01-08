//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewTwo: UIImageView!
    @IBOutlet weak var diceImageViewOne: UIImageView!
    
    var diceOne = UIImage(imageLiteralResourceName: "DiceOne");
    var diceTwo = UIImage(imageLiteralResourceName: "DiceTwo");
    var diceThree = UIImage(imageLiteralResourceName: "DiceThree");
    var diceFour = UIImage(imageLiteralResourceName: "DiceFour");
    var diceFive = UIImage(imageLiteralResourceName: "DiceFive");
    var diceSix = UIImage(imageLiteralResourceName: "DiceSix");
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rollButtom(_ sender: UIButton) {
        
        let diceRandomOne = Int.random(in: 0...5);
        let diceRandomTwo = Int.random(in: 0...5);
        let diceArray = [diceOne, diceTwo, diceThree, diceFour, diceFive, diceSix];
        
        diceImageViewOne.image = diceArray[diceRandomOne];
        diceImageViewTwo.image = diceArray[diceRandomTwo];

    }
}

