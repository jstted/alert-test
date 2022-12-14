//
//  MainViewController.swift
//  alert test
//
//  Created by Mikhail Tedeev on 28.11.2022.
//

import UIKit

class MainViewController: UIViewController {

    
    var textFromVC: String!
    let username = "Username"
    
    // MARK: - Outlets
    
    @IBOutlet weak var gameButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var hiLabel: UILabel!
    @IBOutlet weak var resultAddLabel: UILabel!
    @IBOutlet weak var gameResultLabel: UILabel!
    
    // MARK: - View Did Load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hiLabel.text = "Hi \(textFromVC ?? username)! Choose what you want."
        resultAddLabel.isHidden = true
        gameResultLabel.isHidden = true
        addButton.setTitle("Add numbers", for: .normal)
        
    }
    
    // MARK: - Methods

    func alertGame () {
        let model = Model()
        let alert = UIAlertController(title: "Guess the number!", message: "Enter number from 1 to 5", preferredStyle: .alert)
        alert.addTextField()
        
        let alertAction = UIAlertAction(title: "Enter!", style: .default) { action in
            let alertInput: Int = Int(alert.textFields?.first?.text ?? "0") ?? 0
            let result = model.randomGame(number: alertInput)
            self.gameResultLabel.text = result
            self.gameResultLabel.isHidden = false
        }
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
    
    
    func alertAdd () {
        let model = Model()
        let alert = UIAlertController(title: "Addition", message: "Enter two numbers to calculate", preferredStyle: .alert)
        alert.addTextField()
        alert.addTextField()
        
        let alertAction = UIAlertAction(title: "Calculate!", style: .default) { action in
            let firstNum = Int(alert.textFields![0].text ?? "0") ?? 0
            let secondNum = Int(alert.textFields![1].text ?? "0") ?? 0
            let result = model.adding(firstNum: firstNum, secondNum: secondNum)
            self.resultAddLabel.text = String(result)
            self.resultAddLabel.isHidden = false

        }
        alert.addAction(alertAction)
        
        present(alert, animated: true)
        
    }
    
    
    
    // MARK: - Actions

        @IBAction func buttonAdd(_ sender: Any) {
        alertAdd()
    }
    @IBAction func gameAction(_ sender: UIButton) {
        alertGame()
    }
    

}
