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
    
    var questionArray: [String] = ["1. Would you say your health is good?",
                                   
                                   "2. Is your health better than a year ago?",
                                   
                                   "3. Does your health limit you in: \n \na. lifting or carrying groceries?",
                                    "b. climbing several flights of stairs?",
                                    "c. climbing one flight of stairs?",
                                    "d. bending, kneeling, or stooping?",
                                    "e. walking more than a mile?",
                                    "f. walking several blocks?",
                                    "g. walking one block?",
                                    "h. bathing or dressing yourself?",
                                    
                                    "4. Does your health limit you in: \n \na. vigorous activities (strenuous sports, lifting heavy objects)?",
                                    "b. moderate activities (moving a table, pushing a vacuum cleaner, bowling, or playing golf)?",
                                    
                                    "5. Due to health, in the past month have you: \n \na. accomplished less than you would like?",
                                    "b. cut down the amount of time you spend on work or other activities?",
                                    "c. limited the kind of work or other activities?",
                                    "d. had difficulty performing the work or other activites?",
                                   
                                    "6. Due to emotional problems, in the past month have you: \n \na. accomplished less than you would like?",
                                    "b. cut down the amount of time you spend on work or other activities?",
                                    "c. performed work or other activities as carefully as usual?",
                                    
                                    "7. In the past month have your health and/or emotional problems interfered with your normal social activities with family or friends?",
                                    
                                    "8. In the past month, have you been in bodily pain?",
                                    
                                    "9. In the past month, has pain interfered with your normal work (both within and outside the household)?",
                                   
                                    "10. At any time in the past month have you: \n \na. felt full of pep?",
                                    "b. felt calm and peaceful?",
                                    "c. had a lot of energy?",
                                    "d. felt happy?",
                                    
                                    "11. At any time in the past month have you: \n \na. felt tired?",
                                    "b. felt worn out?",
                                    "c. been exceptionally nervous?",
                                    "d. felt downhearted and blue?",
                                    "e. felt so down that nothing could cheer you up?",


                                    "12. I seem to get sick a little easier than other people.",
                                    "13. I am as healthy as anybody I know.",
                                    "14. I expect my health to get worse.",
                                    "15. My health is excellent."]
    
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
//        yesOutlet.layer.shadowOffset = CGSize(width: 0, height: 1)
//        yesOutlet.layer.shadowOpacity = 0.5
//        yesOutlet.layer.shadowColor = UIColor.black.cgColor
//        yesOutlet.layer.shadowRadius = 35
//
        yesOutlet.layer.cornerRadius = 32
        yesOutlet.layer.masksToBounds = true
        
        noOutlet.layer.cornerRadius = 32
        noOutlet.layer.masksToBounds = true
        
 //       outputCardView.layer.borderWidth = 1
//        outputCardView.layer.borderColor = UIColor.tcHotPink.cgColor
        
//        resetButton.layer.cornerRadius = 8
//        resetButton.layer.masksToBounds = true
    }

    
    //background color = 00236F
    
    //possible button color = FCDCA2 or FFD17F or F8DBAA
}

