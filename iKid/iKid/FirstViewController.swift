//
//  FirstViewController.swift
//  iKid
//
//  Created by Quinton Baebler on 4/25/24.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var revealAnswer: UIButton!
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var AnswerLabel: UILabel!
    var isQuestionDisplayed = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showQuestion()
        print("view loaded")
    }
       func showQuestion() {
           // Update labels
           QuestionLabel.isHidden = false
           AnswerLabel.isHidden = true
           
           revealAnswer.setTitle("Show Answer", for: .normal)
           isQuestionDisplayed = true
       }
       
       func showPunchline() {
           // Update labels
           QuestionLabel.isHidden = true
           AnswerLabel.isHidden = false
           
           revealAnswer.setTitle("Show Question", for: .normal)
           isQuestionDisplayed = false
       }
       
       @IBAction func nextButtonTapped(_ sender: UIButton) {
            //Toggle between question and punchline
           if isQuestionDisplayed {
               showPunchline()
           } else {
                 showQuestion()
           }
       }
    
        override var shouldAutorotate: Bool {
           return true // Return true if you want the view controller to autorotate, false otherwise
       }

}

