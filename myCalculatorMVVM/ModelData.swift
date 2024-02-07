//
//  ModelData.swift
//  myCalculatorMVVM
//
//  Created by Indipro Techologies on 03/10/22.
//

import Foundation

struct datas {
    
    var currentValue = ""
    var leftValue = ""
    var rightValue = ""
    var result = ""
    var currentOperation:Operation = .NULL
    
}
enum Operation:String
{
    case Add = "+"
    case Subtract = "-"
    case Divide = "/"
    case Multiply = "*"
    case NULL = "NULL"
}

