//
//  ViewController.swift
//  Satisfaction App
//
//  Created by Safia Abou-Zamzam on 7/24/18.
//  Copyright © 2018 MAKE School App Safia. All rights reserved.
//

import UIKit

class QuestionController: UIViewController {


    @IBOutlet weak var yesOutlet: UIButton!
    @IBOutlet weak var noOutlet: UIButton!
    @IBOutlet weak var questionLabel: UILabel!

    var questionArray: [String] = ["Are you satisfied with your current health?", "Were you comfortable in the presence of your practitioner?", "Were you satisfied with your patient care experience?", "Are you alive?"]
    var index = 0
    var answers: [String] = []
    
    @IBAction func yesAction(_ sender: UIButton) {
        answers.append("Yes")
        for answer in answers{
            print(answer)
        }
        if index == questionArray.count - 1 {
            performSegue(withIdentifier: "segueToSend", sender: self)
            return
        }
        index += 1
        questionLabel.text = questionArray[index]

    }
    
    @IBAction func noAction(_ sender: UIButton) {
        answers.append("No")
        for answer in answers{
            print(answer)
        }
        if index == questionArray.count - 1 {
            performSegue(withIdentifier: "segueToSend", sender: self)
            return
        }
        index += 1
        questionLabel.text = questionArray[index]

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel?.text = questionArray[0]
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      // guard let identifier = segue.identifier else {return}
        
        
        let destination = segue.destination as! ResultsPage
        destination.answers = answers
        
    }

}

