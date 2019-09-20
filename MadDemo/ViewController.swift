//
//  ViewController.swift
//  MadDemo
//
//  Created by Julian Parker on 9/15/19.
//  Copyright © 2019 Jawny Jules. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet var backgroundView: UIView!
    
    var defaultString: String = "Type something above!"
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.backgroundColor = UIColor.purple
        textLabel.text = defaultString
        // Do any additional setup after loading the view.
    }

   
    
    @IBAction func updateText(_ sender: Any) {
        if(textField.text?.count == 0){
            textLabel.text = defaultString
        }
        else{
     textLabel.text =   textField.text
        }
    }
    
    @IBAction func changeTextColor(_ sender: Any) {
        
        if(textLabel.textColor != UIColor.red){
        textLabel.textColor = UIColor.red
        }
        else{
        textLabel.textColor = UIColor.black
        }
        
    }
    
    @IBAction func changeViewColor(_ sender: Any) {
        if(backgroundView.backgroundColor != UIColor.red){
        backgroundView.backgroundColor = UIColor.red
        }
        else{
        backgroundView.backgroundColor = UIColor.yellow
        }
    }
    
    @IBAction func resetEverything(_ sender: Any) {
        
        backgroundView.backgroundColor = UIColor.purple
        textLabel.text = defaultString
        textField.text = ""
        
    }
    
}

