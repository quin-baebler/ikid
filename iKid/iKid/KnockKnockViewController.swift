//
//  KnockKnockViewController.swift
//  iKid
//
//  Created by Quinton Baebler on 4/28/24.
//

import UIKit

class KnockKnockViewController: UIViewController {

    @IBOutlet weak var jokeLabel: UILabel!
    var jokePhrases = ["Knock, knock", "Who's there?", "Hal", "Hal who?", "Hal will you know if you don't open up the door"]

        var currentIndex = 0

        override func viewDidLoad() {
            super.viewDidLoad()
            // Show the initial joke phrase
            showNextPhrase()
        }

    func showNextPhrase() {
        if currentIndex == 0 {
            jokeLabel.text = jokePhrases[currentIndex]
        } else if currentIndex < jokePhrases.count {
            jokeLabel.text = jokePhrases[currentIndex]
        } else {

            currentIndex = 0
            jokeLabel.text = jokePhrases[currentIndex]
        }
        
        currentIndex += 1
    }

        @IBAction func nextButtonTapped(_ sender: UIButton) {
            showNextPhrase()
        }

        override var shouldAutorotate: Bool {
            return true // Return true if you want the view controller to autorotate, false otherwise
        }
    }

