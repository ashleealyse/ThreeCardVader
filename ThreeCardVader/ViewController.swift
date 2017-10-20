//
//  ViewController.swift
//  ThreeCardVader
//
//  Created by C4Q on 10/16/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    ///////
    @IBOutlet weak var startMessage: UILabel!
    
    @IBOutlet weak var naboo: UIImageView!
    
    @IBOutlet weak var resetQuestion: UILabel!
    
    
    @IBOutlet weak var PlayAgain: UIButton!
    
    @IBOutlet weak var Message: UILabel!
    
    @IBOutlet weak var leftCard: UIButton!
    
    @IBOutlet weak var middleCard: UIButton!
    
    @IBOutlet weak var rightCard: UIButton!
    
    func random() -> Int {
       return Int(arc4random_uniform(3))
    }
    

    
///////////////
    
    
    
    
    
    
    
    
    
    
///////////////
    @IBAction func rightButon(_ sender: UIButton) {
        
        rightCard.setImage( #imageLiteral(resourceName: "L K Card .png"), for: .normal)
        startMessage.isHidden = true
        rightCard.isEnabled = false
        leftCard.isEnabled = false
        middleCard.isEnabled = false
        //change background
        Message.backgroundColor = UIColor.green
        Message.textColor = UIColor.black
        Message.text = "You got lucky this time, Luke"
        Message.isHidden = false
        resetQuestion.isHidden = false
        PlayAgain.isHidden = false
    }
    
    
    @IBAction func MiddleCard(_ sender: UIButton) {
        
        middleCard.setImage( #imageLiteral(resourceName: "L Card .png"), for: .normal)
        startMessage.isHidden = true
        middleCard.isEnabled = false
        rightCard.isEnabled = false
        leftCard.isEnabled = false
        //change background
        Message.backgroundColor = UIColor.red
        Message.textColor = UIColor.black
        Message.text = "Leia my dear, not this time "
        Message.isHidden = false
        resetQuestion.isHidden = false
        PlayAgain.isHidden = false
        
    }
    
    
    @IBAction func leftCard(_ sender: UIButton) {
        
        leftCard.setImage(#imageLiteral(resourceName: "Vader Card"), for: .normal)
        startMessage.isHidden = true
        leftCard.isEnabled = false
        middleCard.isEnabled = false
        rightCard.isEnabled = false
        //change background
        Message.backgroundColor = UIColor.red
        Message.textColor = UIColor.black
        Message.text = "Welcome to the Dark Side, my child "
        Message.isHidden = false
        resetQuestion.isHidden = false
        PlayAgain.isHidden = false
        
        
    }
    
    
    
    @IBAction func playAgain(_ sender: UIButton) {
         rightCard.setImage(#imageLiteral(resourceName: "Back Card .jpg") , for: .normal)
        middleCard.setImage(#imageLiteral(resourceName: "Back Card .jpg"), for: .normal)
        leftCard.setImage(#imageLiteral(resourceName: "Back Card .jpg"), for: .normal)
        
        
        Message.isHidden = true
        resetQuestion.isHidden = true
        leftCard.isEnabled = true
        middleCard.isEnabled = true
        rightCard.isEnabled = true
        Message.isHidden = false
        Message.textColor = UIColor.black
        Message.text = "Do you doubt the Dark Side?!"
        PlayAgain.isHidden = true
        Message.isHidden = true
        startMessage.isHidden = false
        
    }
    
    
    
    
}


























