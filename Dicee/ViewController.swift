//
//  ViewController.swift
//  Dicee
//
//  Created by Sanjay on 20/06/19.
//  Copyright © 2019 Subham Sah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImage()
        
    }
    
    @IBAction func diceButton(_ sender: UIButton) {
        
        updateDiceImage()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateDiceImage()
        
    }
    
    //Todo - update data
    
    func updateDiceImage() {
        //update To change dice numbers
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }

}

