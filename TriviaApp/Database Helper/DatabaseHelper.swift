//
//  DatabaseHelper.swift
//  TriviaApp
//
//  Created by Rohini Deo on 22/04/20.
//  Copyright © 2020 Rohini Deo. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class DatabaseHelper:NSObject{
    static let shareInstance = DatabaseHelper()
    let  context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func saveData(gameDict:GameDetailsModel){
        let game = NSEntityDescription.insertNewObject(forEntityName: "Game", into: context) as! Game
        game.name = gameDict.name
        game.flag = gameDict.flag
        game.cricketer = gameDict.cricketer
        game.date = gameDict.date
        do{
            try context.save()
        }catch let err{
            print("Game Save Error :- \(err.localizedDescription)")
        }
    }
    
    func getAllGameDetails()->[Game]{
        var arrGame = [Game]()
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Game")
        do{
            arrGame = try context.fetch(fetchRequest) as! [Game]
        }catch let err{
            print("Error in fetch:- \(err.localizedDescription)")
        }
        return arrGame
    }
}
