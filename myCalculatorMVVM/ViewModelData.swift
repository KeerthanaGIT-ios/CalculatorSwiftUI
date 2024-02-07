//
//  ViewModelData.swift
//  myCalculatorMVVM
//
//  Created by Indipro Techologies on 03/10/22.
//

import Foundation

class Logiccalci: NSObject{
    var viewdata = datas()
    
    
    func operation(operation: Operation){
        if viewdata.currentOperation != .NULL{
           
           
                
            if viewdata.currentOperation == .Add{
                if viewdata.leftValue != ""  {
                    
                   viewdata.leftValue = "\(Double(viewdata.currentValue)! + Double(viewdata.leftValue)! )"
                     
                    }
                else   {
                  viewdata.leftValue = viewdata.currentValue
                   
                    }
                
                viewdata.result = "\(Double(viewdata.rightValue)! + Double(viewdata.leftValue)! )"
            }
                    
                    
        
            
    else if viewdata.currentOperation == .Subtract{
            if viewdata.leftValue != "" {
                
                viewdata.leftValue = "\(Double(viewdata.currentValue)! - Double(viewdata.leftValue)! )"
                viewdata.result = "\(Double(viewdata.rightValue)! - Double(viewdata.leftValue)! )"
                
                
            }
            else{
                viewdata.leftValue = viewdata.currentValue
              viewdata.result = "\(Double(viewdata.rightValue)! - Double(viewdata.leftValue)! )"
                
            }
            
            }
                
               
            
  else if viewdata.currentOperation == .Multiply{
                    if viewdata.leftValue != "" {
                        
                        viewdata.leftValue = "\(Double(viewdata.currentValue)! * Double(viewdata.leftValue)! )"
                        viewdata.result = "\(Double(viewdata.rightValue)! * Double(viewdata.leftValue)! )"
                        
                        
                    }
                    else{
                        viewdata.leftValue = viewdata.currentValue
                      viewdata.result = "\(Double(viewdata.rightValue)! * Double(viewdata.leftValue)! )"
                        
                    }
                   
                }
               
            
            else if viewdata.currentOperation == .Divide{
                    if viewdata.leftValue != "" {
                        
                        viewdata.leftValue = "\(Double(viewdata.currentValue)! / Double(viewdata.leftValue)! )"
                        viewdata.result = "\(Double(viewdata.rightValue)! / Double(viewdata.leftValue)! )"
                        
                        
                    }
                    else{
                        viewdata.leftValue = viewdata.currentValue
                      viewdata.result = "\(Double(viewdata.rightValue)! / Double(viewdata.leftValue)! )"
                        
                    }
                }
                
            
            
            viewdata.currentOperation = operation
           
            
        }
        else{
            
            viewdata.currentValue = viewdata.currentValue
            viewdata.currentOperation = operation
        }
    }
    
    

    
    
    
}
    
    

