//
//  ViewController.swift
//  multiples
//
//  Created by Andrew Ingram on 2016-02-03.
//  Copyright © 2016 Sabring. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var multiple = 0
    var maxNumber = 1000
    var firstNumber = 0
    var currentNumber = 0

    @IBOutlet weak var logoTitle: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var labelAdd: UILabel!
    @IBOutlet weak var textMultiple: UITextField!
    
    @IBAction func playButton(sender: AnyObject) {
        
        if textMultiple.text != nil && textMultiple.text != "" {
        logoTitle.hidden=true
        labelAdd.hidden=false
        playButton.hidden=true
        addButton.hidden=false
        textMultiple.hidden=true
        multiple=Int(textMultiple.text!)!
       
        }else{
            textMultiple.text="Enter Value"
        }
    }
    
    func updateLabel(){
        labelAdd.text="\(firstNumber) + \(multiple) = \(currentNumber)"
        
    }
    
    
    
    @IBAction func addButton(sender: AnyObject) {
        if currentNumber<=maxNumber {
            updateLabel()
            currentNumber=firstNumber+multiple
            firstNumber+=multiple
            
        }
        
        
    }
    
        
}
   



