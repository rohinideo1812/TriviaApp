//
//  GameDetailsModel.swift
//  TriviaApp
//
//  Created by Rohini Deo on 23/04/20.
//  Copyright © 2020 Rohini Deo. All rights reserved.
//

import Foundation

struct GameDetailsModel{
    var name:String
    var cricketer:String
    var flag:String
    var date:String
}

struct SelectedGameValue{
    static var selectedGameValues = GameDetailsModel(name: "", cricketer: "", flag: "",date:"")
}

