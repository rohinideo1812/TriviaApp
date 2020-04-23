//
//  GameTableViewCell.swift
//  TriviaApp
//
//  Created by Rohini Deo on 23/04/20.
//  Copyright © 2020 Rohini Deo. All rights reserved.
//

import UIKit

class GameTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var colorLbl: UILabel!
    @IBOutlet weak var cricketerLbl: UILabel!
    @IBOutlet weak var date: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
