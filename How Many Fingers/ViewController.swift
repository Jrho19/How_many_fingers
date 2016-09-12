//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Jamal Forrest on 7/22/16.
//  Copyright © 2016 R&C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numField: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func guessButton(_ sender: AnyObject) {
        
        
        let guess = String(arc4random_uniform(6))
        
        if numField.text == guess {
            
            resultLabel.text = "\(guess) is right!"
            
        } else {
            
            resultLabel.text = "Wrong, it was a " + guess + "."
            
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

