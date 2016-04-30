//
//  ViewController.swift
//  FoodTracker
//
//  Created by Gabe Kessler on 4/30/16.
//  Copyright © 2016 Gabe Kessler. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    

    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field's user input through delegate class
        nameTextField.delegate = self
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLabel.text = textField.text
    }

    // MARK: Actions
    @IBAction func setDefaultLabelText(sender: UIButton) {
        mealNameLabel.text = "Default Texxxxxxxxt"
    }
    

}

