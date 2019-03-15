//
//  ViewController.swift
//  FoodTracker
//
//  Created by Release on 2019. 3. 13..
//  Copyright © 2019년 kdk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Properties
    
    //drag and drop from Main.storyboard, connect with viewController
    //Merged and solved conflicts
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions

    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text";
    }
    
    
    
}

