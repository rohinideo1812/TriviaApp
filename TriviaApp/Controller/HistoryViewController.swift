//
//  HistoryViewController.swift
//  TriviaApp
//
//  Created by Rohini Deo on 22/04/20.
//  Copyright © 2020 Rohini Deo. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var gameDetails : [Game] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName:"GameTableViewCell", bundle: nil), forCellReuseIdentifier:"GameTableViewCell")
        gameDetails = DatabaseHelper.shareInstance.getAllGameDetails()
        
        // Do any additional setup after loading the view.
    }

}

//Mark : Methods
extension HistoryViewController{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gameDetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GameTableViewCell", for: indexPath) as! GameTableViewCell
        cell.nameLbl.text = self.gameDetails[indexPath.row].name
        cell.colorLbl.text = self.gameDetails[indexPath.row].flag
        cell.cricketerLbl.text = self.gameDetails[indexPath.row].cricketer
        cell.date.text = self.gameDetails[indexPath.row].date
        return cell
    }
    
}
