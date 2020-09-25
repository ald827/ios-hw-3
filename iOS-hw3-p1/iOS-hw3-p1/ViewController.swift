//
//  ViewController.swift
//  iOS-hw3-p1
//
//  Created by دیمه سعد الديحاني on 9/24/20.
//  Copyright © 2020 deemah saad aldaihane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var without: UILabel!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var wieghtFeild: UITextField!
    @IBOutlet weak var hieghtField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func BMI (hieght: Double , wieght: Double) -> String {
        let BMI = wieght / (hieght * hieght)
        if BMI < 18 {
            return("ضعيف")
        } else if BMI < 30 {
            return("وزن طبيعي")
        } else if BMI <  40 {
            return("سمنة خفيفه")
        } else {
           return("سمنة مفرطه")
        }
    }

    @IBAction func button(_ sender: Any) {
        let hieght = Double(hieghtField.text!)!
        let wieght = Double(wieghtFeild.text!)!
        number.text = String (wieght / (hieght * hieght))
        without.text = BMI(hieght: hieght, wieght: wieght)
    }
    
}

