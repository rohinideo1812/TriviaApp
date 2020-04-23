//
//  FlagViewController.swift
//  TriviaApp
//
//  Created by Rohini Deo on 22/04/20.
//  Copyright © 2020 Rohini Deo. All rights reserved.
//

import UIKit

class FlagViewController: UIViewController {

    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn2: UIButton!
    
    var selectedColors : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
}

//Mark : Actions
extension FlagViewController{
    
    @IBAction func NextButtonPressed(_ sender: UIButton) {
        self.selectedColors.removeAll()
        if self.btn1.isSelected || self.btn2.isSelected || self.btn3.isSelected || self.btn4.isSelected{
            if btn1.isSelected{
                self.selectedColors.append("White")
            }
            if btn2.isSelected{
                self.selectedColors.append("Yellow")
            }
            if btn3.isSelected{
                self.selectedColors.append("Orange")
            }
            if btn4.isSelected{
                self.selectedColors.append("Green")
            }
            SelectedGameValue.selectedGameValues.flag = selectedColors.joined(separator:",")
        let summaryVC = self.storyboard?.instantiateViewController(identifier: "SummaryViewController") as! SummaryViewController
        self.navigationController?.pushViewController(summaryVC, animated: true)
        }else{
            print("Selected Atleast 1 Color")
        }
    }
    
    @IBAction func optionButtonPressed(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
}
