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

//  Revision History
//  V1.0 create a basic app                                              - 2022-09-19
//  V1.1 added background color                                          - 2022-09-19
//  V1.2 added numbers and decimal point buttons                         - 2022-09-19
//  V1.3 added operator,backspace,and plus/minus buttons with contraints - 2022-09-20
//  V1.4 added result label and constraints                              - 2022-09-20
//  V1.5 added result label and constraints                              - 2022-09-20
//  V1.6 Added app and group members information                         - 2022-09-21
//  Last modified Date - 2022-09-21
//
//  About The APP
//  This app is to build a calculation tool that can perform arithmetic operations on numbers.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.insetsLayoutMarginsFromSafeArea = false
        // Do any additional setup after loading the view.
    }
    
    
}

