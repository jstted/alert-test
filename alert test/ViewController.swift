//
//  ViewController.swift
//  alert test
//
//  Created by Mikhail Tedeev on 28.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var satanLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.setTitle("Get started!", for: .normal)
        satanLabel.text = "By clicking on the get started button, you agree that your soul and all your data will be transferred to Satan"
        
        
    }
    
    
    
    @IBAction func buttonToNextScreen(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Hey!", message: "Enter your name.", preferredStyle: .alert)
        alertController.addTextField()
        let cancelAction = UIAlertAction(title: "Cancel", style: .default)
        let newVCAction = UIAlertAction(title: "Confirm", style: .destructive) { (action) in

            let newVC = self.storyboard?.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
            let nameTextField = alertController.textFields?.first?.text
            newVC.textFromVC = nameTextField
            self.navigationController?.pushViewController(newVC, animated: true)
            
//            let newVC = MainViewController().storyboard?.instantiateViewController(withIdentifier: "MainViewController") as! UINavigationController
//            MainViewController().present(newVC, animated: true)
            
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(newVCAction)
        present(alertController, animated: true)
        
        
    }
    
    
    
    
}

