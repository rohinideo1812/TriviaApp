//
//  CricketerViewController.swift
//  TriviaApp
//
//  Created by Rohini Deo on 22/04/20.
//  Copyright © 2020 Rohini Deo. All rights reserved.
//

import UIKit

class CricketerViewController: UIViewController {

    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn2: UIButton!
    
    var selectedCricketer = "Sachin Tendulkar"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.btn1.isSelected = true
    }
  
}
 
//Mark : Actions
extension CricketerViewController{
    
    @IBAction func NextButtonPressed(_ sender: UIButton) {
        SelectedGameValue.selectedGameValues.cricketer = selectedCricketer
        let flagVC = self.storyboard?.instantiateViewController(identifier: "FlagViewController") as! FlagViewController
        self.navigationController?.pushViewController(flagVC, animated: true)
    }
    
    @IBAction func optionButtonPressed(_ sender: UIButton) {
        sender.isSelected = true
        if sender == btn1{
            selectedCricketer = "Sachin Tendulkar"
            btn2.isSelected = false
            btn3.isSelected = false
            btn4.isSelected = false
        }else if sender == btn2{
            selectedCricketer = "Virat Kolli"
            btn1.isSelected = false
            btn3.isSelected = false
            btn4.isSelected = false
        }else if sender == btn3{
            selectedCricketer = "Adam Gilchirst"
            btn1.isSelected = false
            btn2.isSelected = false
            btn4.isSelected = false
        }else if sender == btn4{
            selectedCricketer = "Jacques Kallis"
            btn1.isSelected = false
            btn3.isSelected = false
            btn2.isSelected = false
        }
    }
}
