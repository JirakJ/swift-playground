//
//  ViewController.swift
//  Quizzler
//
//  Created by Jakub Jirák on 08/12/2019.
//  Copyright © 2019 Jakub Jirák. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var buttonTrue: UIButton!
    @IBOutlet weak var buttonFalse: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var timer = Timer()
    var quizBrain = QuizBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.invalidateIntrinsicContentSize()
        progressBar.isHidden = true
        questionText.text = quizBrain.getCurrentQuestionText()
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        resultLabel.isHidden = false
        let userAnswer = sender.currentTitle!
        let isCorrect = quizBrain.checkAnswer(userAnswer)
        
        if (isCorrect) {
            resultLabel.text = "Your answer was correct!"
            resultLabel.textColor = UIColor.green
            progressBar.isHidden = false
            quizBrain.actualQuestionUpdate()
            questionText.text = quizBrain.getCurrentQuestionText()
            progressBar.progress = quizBrain.updateProgressBar()
        } else {
            resultLabel.text = "Your answer was incorrect!"
            resultLabel.textColor = UIColor.red
        }
        
        scoreLabel.text = quizBrain.getScore()
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateResultLabel), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateResultLabel () {
        resultLabel.isHidden = true
    }
    
}

