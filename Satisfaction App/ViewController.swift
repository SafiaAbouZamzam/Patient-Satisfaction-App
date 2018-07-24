//
//  ViewController.swift
//  Satisfaction App
//
//  Created by Safia Abou-Zamzam on 7/24/18.
//  Copyright © 2018 MAKE School App Safia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var yesOutlet: UIButton!
    @IBOutlet weak var noOutlet: UIButton!
    @IBOutlet weak var questionLabel: UILabel!


    @IBAction func yesAction(_ sender: UIButton) {
        print("Yes")
    }
    
    @IBAction func noAction(_ sender: UIButton) {
        print("No")
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

