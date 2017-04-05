//
//  ViewController.swift
//  Swift App
//
//  Created by Yeshel Chokshi on 4/5/17.
//  Copyright © 2017 Yeshel Chokshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theLabel: UILabel!
    
    var tapCount = 0

    @IBAction func touched1(_ sender: Any) {
        
        theLabel.text = "Buttons are cool!"
        
        print("Button Touched")
        
        tapCount = tapCount + 1
        
        print(tapCount,"times")
        
        if tapCount >= 10 {
            theLabel.text = "STOP"
        }
    }
    
    @IBAction func touched2(_ sender: Any) {
        theLabel.text = "WOW"
        tapCount = 1
        if tapCount == 1 {
            touched1(tapCount = 0)
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

