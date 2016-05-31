//: Playground - noun: a place where people can play

import UIKit

func ScientificNotation(num: Float) -> String {
    let numberInSci = NSNumberFormatter()
    numberInSci.numberStyle = NSNumberFormatterStyle.ScientificStyle
    guard let numberString = numberInSci.stringFromNumber(num) else {
        return ""
    }
     return numberString
}

let aNumber = ScientificNotation(9.9)
print(aNumber)

ScientificNotation(-80)


  