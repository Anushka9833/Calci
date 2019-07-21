//
//  ViewController.swift
//  CalCi
//
//  Created by Anmol Kumar on 23/06/19.
//  Copyright © 2019 Anushka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentNumber : Double? = 0
    var previousNumber : Double? = 0
    var calculate : Bool = false
    var ans : Double = 0
    var operation: Int = 0
    

    
    @IBOutlet var labeltext: UILabel!
    
    
    @IBAction func Cancel(_ sender: DesignableButton) {
        labeltext.text = ""
        currentNumber = 0
        previousNumber = 0
        ans = 0
        
    }
  
    @IBAction func del(_ sender: Any) {
        if(labeltext.text != ""){
            labeltext.text?.removeLast()
        }
        else{
            return
        }
           }
    
  
    @IBAction func operators(_ sender: DesignableButton) {
        
        if(labeltext.text != "" && sender.tag != 16 && labeltext.text?.last != "." && labeltext.text?.last != "+" && labeltext.text?.last != "-" && labeltext.text?.last != "x" && labeltext.text?.last != "÷"){
            
            if let num = labeltext.text?.maxLength(length: 11) {
                
                previousNumber = Double(num)
            }
           
            
           
            if (sender.tag == 15){
                
                labeltext.text = "+"
            }
            else if(sender.tag == 14){
                labeltext.text = "-"
            }
            else if(sender.tag == 13){
                labeltext.text = "x"
            }
            else if(sender.tag == 12){
                labeltext.text = "÷"
            }
            operation = sender.tag
            calculate = true
            
        }
            
        else if (sender.tag == 16 && labeltext.text?.last != "."){
            
            if (operation == 15){
                
                labeltext.text? = String(currentNumber! + previousNumber!).maxLength(length: 12)
            }
            else if(operation == 14){
                labeltext.text = String(previousNumber! - currentNumber!).maxLength(length: 12)
                
            }
            else if(operation == 13){
                labeltext.text = String(currentNumber! * previousNumber!).maxLength(length: 12)
            }
            else if(operation == 12){
                labeltext.text = String(previousNumber! / currentNumber!).maxLength(length: 12)
            }
        }
        
        
    }
    
    
    
   
    @IBAction func Numbers(_ sender: DesignableButton) {
        if calculate == true{
            
            if(sender.tag == 20){
                let array2 = labeltext.text
                if (array2?.contains("."))!{
                    print("too many dots")
                }
                    
                else{
                    if labeltext.text!.count < 11{
                        labeltext.text! += "."
                        
                        if let num3 = labeltext.text{
                            currentNumber = Double(num3)
                            calculate = false
                        }
                    }
                    else{
                        return
                    }
                    
                   
                }
            }
            
            else{
                if(labeltext.text!.count < 11){
                    labeltext.text = String(sender.tag)
                    if let num4 = labeltext.text {
                        currentNumber = Double(num4)
                         calculate = false
                    }
                }
                else{
                    return
                }
               
            
            }
        }
            
            
        else{
            if(sender.tag == 20){
                let array = labeltext.text
                
                if ((array?.contains("."))!)
                {   print("toomany ......")
                }
                else{
                    if labeltext.text!.count < 11{
                        labeltext.text! += "."
                        if let num = labeltext.text{
                            currentNumber = Double(num)
                        }
                    }
                    else{
                        return
                    }
                    
                }
            }
            else {
                if labeltext.text!.count < 11{
                    print("less")
                    labeltext.text! += String(sender.tag)
                    if let num2 = labeltext.text{
                        currentNumber = Double(num2)
                    }
                }
                else{
                    return
                }
                
              }
        }

        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
 
    
}

extension String {
    func maxLength(length: Int) -> String {
        var str = self
        let nsString = str as NSString
        if nsString.length >= length {
            str = nsString.substring(with:
                NSRange(
                    location: 0,
                    length: nsString.length > length ? length : nsString.length)
            )
        }
        return  str
}
}
