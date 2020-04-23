//
//  NameViewController.swift
//  TriviaApp
//
//  Created by Rohini Deo on 22/04/20.
//  Copyright © 2020 Rohini Deo. All rights reserved.
//

import UIKit

class NameViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameTextField.delegate = self
    }
}

//Mark : Actions
extension NameViewController{
    
    @IBAction func NextButtonPressed(_ sender: UIButton) {
        if nameTextField.text != ""{
            SelectedGameValue.selectedGameValues.name = nameTextField.text!
            let cricketerVC = self.storyboard?.instantiateViewController(identifier: "CricketerViewController") as! CricketerViewController
            self.navigationController?.pushViewController(cricketerVC, animated: true)
        }else{
            print("Please Enter Name")
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.nameTextField.text = ""
    }
    
}

