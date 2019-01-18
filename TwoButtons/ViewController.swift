//
//  ViewController.swift
//  TwoButtons
//
//  Created by Faical Sawadogo1212 on 1/17/19.
//  Copyright © 2019 Faical Sawadogo1212. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textfield: UITextField!
    
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func setText(_ sender: UIButton) {
        textLabel.text = textfield.text;
    }
    
    @IBAction func clearText(_ sender: UIButton) {
        textLabel.text = "";
        textfield.text = "";
    }
    
}
