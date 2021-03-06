//
//  ResultsPage.swift
//  Satisfaction App
//
//  Created by Safia Abou-Zamzam on 7/24/18.
//  Copyright © 2018 MAKE School App Safia. All rights reserved.
//

import Foundation
import UIKit
import MessageUI

class ResultsPage: UIViewController, MFMailComposeViewControllerDelegate, UIScrollViewDelegate {
    var answers: [String] = []
    var questionArray: [String] = []
    var index: Int = 0
    var toDisplayQAndA: String = ""
    var disclosure: String = "This survey is based on the RAND Medical Outcomes Study SF-36 survey. \nThese questions have been altered for the purpose of this application. "
    
    @IBOutlet weak var sendOutlet: UIButton!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var scrollOutlet: UIScrollView!
    @IBOutlet weak var emailOutlet: UITextField!
    
    @IBAction func sendAction(_ sender: UIButton) {
        print(questionArray, answers)
        
        if !MFMailComposeViewController.canSendMail() {
            print("Mail services are not available")
            return
        }
        
        let composeVC = MFMailComposeViewController()
        composeVC.mailComposeDelegate = self
        
        // Configure the fields of the interface.
        guard let email = emailOutlet.text
            else {return}
        composeVC.setToRecipients([email])
        composeVC.setSubject("Results")
        composeVC.setMessageBody(toDisplayQAndA + "\n\(disclosure)", isHTML: false)
        
        // Present the view controller modally.
        self.present(composeVC, animated: true, completion: nil)
    
    }

   
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
         controller.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
       // scrollOutlet.contentInsetAdjustmentBehavior = .never

        setupViews()
        
        self.scrollOutlet.delegate = self
        self.scrollOutlet.isDirectionalLockEnabled = true
        
//        var toDisplayQuestion: String = ""
//        for question in questionArray {
//            toDisplayQuestion += question + "\n"
//        }
//        var toDisplayAnswer: String = ""
//        for answer in answers {
//            toDisplayAnswer += answer + "\n"
//        }
//
        
        for index in 0..<questionArray.count {
                toDisplayQAndA.append(questionArray[index] + " \n" + answers[index] + " \n" + "\n")
        }

        answerLabel.text = toDisplayQAndA
        
        
//        let both = toDisplayQuestion + "\n" + toDisplayAnswer
//        answerLabel.text = both
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.x>0 {
            scrollView.contentOffset.x = 0
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func setupViews() {

        answerLabel.layer.cornerRadius = 24
        answerLabel.layer.masksToBounds = true
        
        sendOutlet.layer.cornerRadius = 16
        sendOutlet.layer.masksToBounds = true
        
        scrollOutlet.layer.cornerRadius = 24
        scrollOutlet.layer.masksToBounds = true
        
 //       emailOutlet.adjustsFontSizeToFitWidth = true
        emailOutlet.layer.cornerRadius = 16
        emailOutlet.layer.masksToBounds = true

    }
    
}
