//
//  ViewController.swift
//  Is It Prime
//
//  Created by Zulwiyoza Putra on 8/2/16.
//  Copyright © 2016 Zulwiyoza Putra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func isItPrime(sender: AnyObject) {
        
        if let userEnteredString = numberTextField.text {
            
            let userEnteredInteger = Int(userEnteredString)
            
            if let number = userEnteredInteger {
                
                var isPrime = true
                if number == 1 & 2 & 3 {
                    isPrime = false
                }
                
                var i = 2
                while i < number  {
                    if number % i == 0 {
                        isPrime = false
                    }
                    i += 1
                }
                
                if isPrime {
                    resultLabel.text = "\(number) is prime"
                } else {
                    resultLabel.text = "\(number) is not a prime"
                }
            }
        } else {
            resultLabel.text = "please enter a whole positive number"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

