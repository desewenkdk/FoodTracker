//
//  ViewController.swift
//  FoodTracker
//
//  Created by Release on 2019. 3. 13..
//  Copyright © 2019년 kdk. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
    UITextFieldDelegate /*the ViewController class can act as a valid text field delegate.*/
{
    //MARK: Properties
    
    //drag and drop from Main.storyboard, connect with viewController
    //Merged and solved conflicts
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameTextField.delegate = self/*ViewController class itself*/;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide the Keyboard
        textField.resignFirstResponder()
        return true
    }
    
    /*
     The textFieldDidEndEditing(_:) method gives you a chance to read the information entered into the text field and do something with it.
    */
    func textFieldDidEndEditing(_ textField: UITextField){
        mealNameLabel.text = textField.text
    }

    //MARK: Actions
    @IBAction func selectImageFromLibrary(_ sender: UITapGestureRecognizer) {
        
    }
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    
    
    
}

