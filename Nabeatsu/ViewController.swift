//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func isAho() -> Bool {
        
        if number % 3 == 0 {
            
            return true
        }
        
        var checkNum: Int = number
        
        while checkNum >= 10 {
            
            if checkNum % 10 == 3 {
                
                return true
            }else {
                
                checkNum /= 10
            }
        }
        
        if checkNum % 10 == 3 {

            return true
        }
        
        return false
    }
    @IBAction func plusButton(){
        number = number + 1
        countLabel.text = String(number)
        
        if isAho() == true {
            
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else {
            
            faceLabel.text = "(゜o゜)"
        }
    }

    @IBAction func randomButton(_ sender: Any) {
        
        number = Int.random(in: 0...499)
        plusButton()
    }
    
    @IBAction func clearButton(_ sender: Any) {
        
        number = 0
        countLabel.text = "0"
        faceLabel.text = "(゜o゜)"
    }
    
}

