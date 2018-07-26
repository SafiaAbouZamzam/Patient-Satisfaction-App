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
    
    var questionArray: [String] = [" 1. Are you satisfied with your current health?", " 2. Were you comfortable in the presence of your practitioner?", " 3. Were you satisfied with your patient care experience?", " 4. Are you alive?"]
    
    var index = 0
    var answers: [String] = []
    
    @IBAction func yesAction(_ sender: UIButton) {
        answers.append(" Yes")
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
        answers.append(" No")
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
        setupViews()
        questionLabel?.text = questionArray[0]
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      // guard let identifier = segue.identifier else {return}
        
        
        let destination = segue.destination as! ResultsPage
        destination.answers = answers
        destination.questionArray = questionArray
    }
    
    func setupViews() {
        yesOutlet.layer.shadowOffset = CGSize(width: 0, height: 1)
        yesOutlet.layer.shadowOpacity = 0.5
        yesOutlet.layer.shadowColor = UIColor.black.cgColor
        yesOutlet.layer.shadowRadius = 35
 
        yesOutlet.layer.cornerRadius = 32
        yesOutlet.layer.masksToBounds = true
        
        noOutlet.layer.cornerRadius = 32
        noOutlet.layer.masksToBounds = true
        
 //       outputCardView.layer.borderWidth = 1
//        outputCardView.layer.borderColor = UIColor.tcHotPink.cgColor
        
//        resetButton.layer.cornerRadius = 8
//        resetButton.layer.masksToBounds = true
    }

}

