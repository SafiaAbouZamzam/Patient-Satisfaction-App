//
//  InstructionVC.swift
//  Satisfaction App
//
//  Created by Safia Abou-Zamzam on 7/26/18.
//  Copyright © 2018 MAKE School App Safia. All rights reserved.
//

import Foundation
import UIKit

class InstructionVC: UIViewController {
    
    @IBOutlet weak var instructionVC: UILabel!
    @IBOutlet weak var continueOutlet: UIButton!
    @IBOutlet weak var infoOutlet: UIButton!
    
    @IBAction func continueButton(_ sender: UIButton) {
    }
    
    
    @IBAction func infoAction(_ sender: UIButton) {
        infoAlert()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()

    }
  
    
    func infoAlert() {
        let alert = UIAlertController(title: " This survey is based on the RAND Medical Outcomes Study SF-36 survey. ", message: " These questions have been altered for the purpose of this application. ", preferredStyle: .alert)
        let action = UIAlertAction(title: "Back", style: .cancel, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        alert.view.tintColor = UIColor(red: 0/255, green: 43/255, blue: 107/255, alpha: 1)

//        let subview = alert.view.subviews.first! as UIView
//        let alertContentView = subview.subviews.first! as UIView
//        alertContentView.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1)
//        alertContentView.layer.cornerRadius = 15
//        alertContentView.layer.masksToBounds = true
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func setupViews() {
        continueOutlet.layer.cornerRadius = 24
        continueOutlet.layer.masksToBounds = true
        
    }
    
    
    //background color option = 0558BD
}
