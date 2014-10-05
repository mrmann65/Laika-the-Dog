//
//  ViewController.swift
//  DogYears
//
//  Created by Anthony Mann on 10/4/14.
//  Copyright (c) 2014 Mann Holdings Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var humanNumberOfYears: UITextField!
    @IBOutlet weak var doggyNumberOfYears: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func convertButtonPressed(sender: AnyObject) {
        
        //Assign Dog Years
        var humanYearsDouble = Double((humanNumberOfYears.text as NSString).doubleValue)
        var dogYearsMultiplier:Double
        
        //Older or Younger then 2
        if humanYearsDouble <= 2 {
            dogYearsMultiplier = 10.5
        }
        else {
            dogYearsMultiplier = 7
        }
        
        //Get the Human years and make it an integer
        let humanYears = humanNumberOfYears.text.toInt()!
        
        //Unhide the Label
        doggyNumberOfYears.hidden = false
        
        //Display and multiply Dog years and Human Years
        doggyNumberOfYears.text = "Laika is " + "\(humanYearsDouble * dogYearsMultiplier)" + " in dog years!"
        
        //Clear the Text Field
        humanNumberOfYears.text = ""
        
        //Resign the Keyboard
        humanNumberOfYears.resignFirstResponder()
        
    }


}

