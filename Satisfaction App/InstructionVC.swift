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
    
    
    @IBAction func continueButton(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    
    func setupViews() {
        continueOutlet.layer.cornerRadius = 24
        continueOutlet.layer.masksToBounds = true
        
    }
    
    
    //background color option = 0558BD
}
