//
//  ViewController.swift
//  myCalculatorMVVM
//
//  Created by Indipro Techologies on 03/10/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var data = datas()
    
    var logicss = Logiccalci()
    
  
    
   
    
    @IBOutlet weak var resultshow: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultshow.text = "0"
        
        
    }

    //clear zero
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if resultshow.text == "0"{
            resultshow.text = ""
        }
    }
    
    
    
    
    
   

    @IBAction func zero(_ sender: UIButton) {
        
        textFieldDidBeginEditing(resultshow)
        resultshow.text = resultshow.text! + "0"
       
       }
    
    @IBAction func one(_ sender:  UIButton) {
        textFieldDidBeginEditing(resultshow)
        resultshow.text = resultshow.text! + "1"
    }
    
    
    @IBAction func two(_ sender:  UIButton) {
        textFieldDidBeginEditing(resultshow)
        resultshow.text = resultshow.text! + "2"
        
    }
    
    @IBAction func three(_ sender:  UIButton) {
        textFieldDidBeginEditing(resultshow)
        resultshow.text = resultshow.text! + "3"
       
       }
    
    @IBAction func four(_ sender:  UIButton) {
        textFieldDidBeginEditing(resultshow)
        resultshow.text = resultshow.text! + "4"
        
       }
    
    @IBAction func five(_ sender: UIButton) {
        textFieldDidBeginEditing(resultshow)
        resultshow.text = resultshow.text! + "5"
        
    }
    
    @IBAction func six(_ sender:  UIButton) {
        textFieldDidBeginEditing(resultshow)
        resultshow.text = resultshow.text! + "6"
       
    }
    
    @IBAction func seven(_ sender: UIButton) {
        textFieldDidBeginEditing(resultshow)
        resultshow.text = resultshow.text! + "7"
       
    }
    
    @IBAction func eight(_ sender: UIButton) {
        textFieldDidBeginEditing(resultshow)
        resultshow.text = resultshow.text! + "8"
        
    }
    
    @IBAction func nine(_ sender: UIButton) {
        textFieldDidBeginEditing(resultshow)
        resultshow.text = resultshow.text! + "9"
    
    }
    
    
    
    @IBAction func Allclear(_ sender: UIButton) {
        logicss.viewdata.currentValue = ""
        logicss.viewdata.leftValue = ""
        logicss.viewdata.rightValue = ""
        logicss.viewdata.currentOperation = .NULL
        logicss.viewdata.result = ""
        resultshow.text = "0"
        
     }
    
    
    
    @IBAction func back(_ sender: UIButton) {
        resultshow.text?.removeLast()
       
        }
    
    
    @IBAction func Dot(_ sender: UIButton) {
        resultshow.text! += "."
    }
    @IBAction func equal(_ sender: UIButton) {
       
        logicss.viewdata.rightValue = resultshow.text!
        logicss.operation(operation:  logicss.viewdata.currentOperation)
        resultshow.text =  logicss.viewdata.result
        
    }
    
    @IBAction func add(_ sender: UIButton) {
        
        logicss.viewdata.currentValue = resultshow.text!
        logicss.operation(operation: .Add)
        resultshow.text = ""
    }
    
    @IBAction func subtract(_ sender: UIButton) {
        
        logicss.viewdata.currentValue =  resultshow.text!
        logicss.operation(operation: .Subtract)
        resultshow.text = ""
        
    }
    @IBAction func multiply(_ sender: UIButton) {
        
        logicss.viewdata.leftValue =  resultshow.text!
        logicss.operation(operation: .Multiply)
        resultshow.text = ""
        }
    
    @IBAction func divide(_ sender: UIButton) {
        logicss.viewdata.leftValue =  resultshow.text!
        logicss.operation(operation: .Divide)
        resultshow.text = ""
        }
    }

