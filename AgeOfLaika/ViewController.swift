//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Stephen Kiernan on 5/25/15.
//  Copyright (c) 2015 lingophotoapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanAge: UITextField!
    
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    @IBOutlet weak var convertButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func getDogYearsButton(sender: UIButton) {
        
        
        if let humanAgeInt = humanAge.text.toInt(){
        
            var dogYears = humanAgeInt*7
            dogYearsLabel.text = "Laika is \(dogYears) dog years old!"
            humanAge.resignFirstResponder()
            dogYearsLabel.hidden = false
            
        } else{
            dogYearsLabel.hidden = false
            dogYearsLabel.text = "Please enter a whole number!"
        }
        
        
        
        convertButton.setTitle("Here you go!!!", forState: UIControlState.Normal)
        
    }
    
    
}

