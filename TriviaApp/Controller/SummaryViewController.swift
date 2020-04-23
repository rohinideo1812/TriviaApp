//
//  SummaryViewController.swift
//  TriviaApp
//
//  Created by Rohini Deo on 22/04/20.
//  Copyright © 2020 Rohini Deo. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var cricketorLbl: UILabel!
    @IBOutlet weak var flagLbl: UILabel!
    
    let date = Date()
    let formatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLbl.text = "Hello: " + SelectedGameValue.selectedGameValues.name
        self.cricketorLbl.text = "Answer : " + SelectedGameValue.selectedGameValues.cricketer
        self.flagLbl.text = "Answers : " + SelectedGameValue.selectedGameValues.flag
        formatter.dateFormat = "dd MMMM hh:mm a"
    }
    
}

//Mark : Actions
extension SummaryViewController{
    
    @IBAction func FinishButtonPressed(_ sender: UIButton) {
        DatabaseHelper.shareInstance.saveData(gameDict: GameDetailsModel(name: SelectedGameValue.selectedGameValues.name, cricketer: SelectedGameValue.selectedGameValues.cricketer, flag: SelectedGameValue.selectedGameValues.flag, date: formatter.string(from: date)))
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func HistoryButtonPressed(_ sender: UIButton) {
        DatabaseHelper.shareInstance.saveData(gameDict: GameDetailsModel(name: SelectedGameValue.selectedGameValues.name, cricketer: SelectedGameValue.selectedGameValues.cricketer, flag: SelectedGameValue.selectedGameValues.flag, date:formatter.string(from: date)))
        let historyVC = self.storyboard?.instantiateViewController(identifier: "HistoryViewController") as! HistoryViewController
        self.navigationController?.pushViewController(historyVC, animated: true)
    }
}
