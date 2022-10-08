//
//  ViewController.swift
//
//  APP Name: Calculator APP
//  Group9_MAPD714_Assignment1
//  Group Members
//     - Yachao Xiong  301298033
//     - Mingyuan Xie  301275467
//
//  Created by Yachao on 2022-09-19.

//  Revision History - Assignment2
//  V2.0 add numbers and decimal point button function   - 2022-10-7
//  V2.1 add delete function                             - 2022-10-8
//  Last modified Date - 2022-10-7
//
//  About The APP
//  This app is to build a calculation tool that can perform arithmetic operations on numbers.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var outputResult_Label: UILabel!
        var digitStack = [Double]()
        var operatorStack = [String]()
        var removedDigitStack = [Double]()
        var removedOperatorStack = [String]()
        var tempResult:Double = 0
        var lastOperator:String = ""
        var previousOperatorButton = ""
        var currentResult:Double = 0
        var hasClickedOperatorButton = false
        var hasFinishedInput = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.insetsLayoutMarginsFromSafeArea = false
        // Do any additional setup after loading the view.
    }
    @IBAction func digitButton_Pressed(_ sender: UIButton) {
           if hasClickedOperatorButton && hasFinishedInput {
               outputResult_Label.text = ""
           }
           let digit:Int! = Int(sender.titleLabel!.text!)
           if sender.titleLabel!.text! == "." {
               if !outputResult_Label.text!.contains(".") {
                   outputResult_Label.text! = outputResult_Label.text! + "."
               }
           }else{
               outputResult_Label.text! = outputResult_Label.text! == "0" ? String(digit): outputResult_Label.text! + String(digit)
           }
           hasFinishedInput = false
           hasClickedOperatorButton = false
       }
 
    @IBAction func deleteButton_Pressed(_ sender: UIButton) {
          if hasClickedOperatorButton == true { return }
          let text = outputResult_Label.text!
          if text.count == 1 {
              outputResult_Label.text = "0"
              return
          }
          let beginIndex = text.index(text.startIndex, offsetBy: 0)
          let endIndex = text.index(text.startIndex, offsetBy: text.count-2)
          let subString = String(text[beginIndex...endIndex])
          outputResult_Label.text = subString
      }
    
    
}

