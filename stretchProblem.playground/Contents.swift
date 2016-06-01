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

ScientificNotation(0.001)

let aNumber = ScientificNotation(9.9)
print(aNumber)

ScientificNotation(-80)

//func karlsWay(number: Float) -> String {
//    let numberFormat = NSNumberFormatter()
//    numberFormat.number
//}
//

func anotherWay(number: Float) -> String {
//    let numero = abs(number)
    let numeroFormatter = NSNumberFormatter()
    numeroFormatter.numberStyle = NSNumberFormatterStyle.ScientificStyle
    if number > 0 {
        numeroFormatter.negativeFormat = "0.#E0"
    } else {
        numeroFormatter.positiveFormat = "0.#E0"
    }
    numeroFormatter.exponentSymbol = "*10^"
    
    return numeroFormatter.stringFromNumber(number) ?? ""
}