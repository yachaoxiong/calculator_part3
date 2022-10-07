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
//  V2.0 add number and decimal point button function based on assignment1    - 2022-10-7
//  Last modified Date - 2022-10-7
//
//  About The APP
//  This app is to build a calculation tool that can perform arithmetic operations on numbers.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var FinalResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.insetsLayoutMarginsFromSafeArea = false
        // Do any additional setup after loading the view.
    }
    //event handlers
    
    @IBAction func NumberButton_Pressed(_ sender: UIButton)
    {
        let button = sender as UIButton
        let buttonText = button.titleLabel?.text
        
        
        switch buttonText {
        case ".":
            if(!FinalResult.text!.contains("."))
            {
                FinalResult.text?.append(buttonText!)
            }
        default:
            if(FinalResult.text == "0")
            {
                FinalResult.text = buttonText
            }
            else
            {
                FinalResult.text?.append(buttonText!)
            }
        }
    }
    
    
}

