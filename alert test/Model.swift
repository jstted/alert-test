//
//  Model.swift
//  alert test
//
//  Created by Mikhail Tedeev on 28.11.2022.
//

import Foundation

class Model {
    
    // MARK: - Adding Model
    
    func adding (firstNum f: Int, secondNum s: Int) -> Int {
        return f + s
    }
    
    // MARK: - Game Model
    
    let num = Int.random(in: 1...5)
    func randomGame(number: Int) -> String {
        var result: String = "Something wrong, try again."
        if number == num {
            result = "You won!"
            return result
        } else if number > num {
            result = "Less"
            return result
        } else if number < num {
            result = "More"
        }
        return result
    }
    
}
