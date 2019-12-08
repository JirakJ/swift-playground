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
    
    let questions = [
        Question(question: "Is 4 + 2 equal 6?", answer: true),Question(question: "Is London in UK?", answer: true),Question(question: "Is 4 - 2 equal 6?", answer: false)
    ]
    
    var actualQuestion = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.invalidateIntrinsicContentSize()
        progressBar.isHidden = true
        //actualQuestion = Int.random(in: 0 ..< questions.count)
        questionText.text = questions[actualQuestion].question
        // Do any additional setup after loading the view.
    }
    
    func actualQuestionUpdate(){
        actualQuestion += 1
        actualQuestion = actualQuestion%questions.count
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
        switch sender.currentTitle! {
        case "True":
            print("Button True pressed.")
            if(questions[actualQuestion].answer==true){
                resultLabel.text = "Your answer was correct!"
                resultLabel.textColor = UIColor.green
                progressBar.isHidden = false
                actualQuestionUpdate()
                questionText.text = questions[actualQuestion].question
                progressBar.progress = Float(actualQuestion+1)/Float(questions.count)
            } else if(questions[actualQuestion].answer==false){
                resultLabel.text = "Your answer was incorrect!"
                resultLabel.textColor = UIColor.red
            }
        case "False":
            print("Button False pressed.")
            if(questions[actualQuestion].answer==false){
                resultLabel.text = "Your answer was correct!"
                resultLabel.textColor = UIColor.green
                progressBar.isHidden = false
                actualQuestionUpdate()
                questionText.text = questions[actualQuestion].question
                progressBar.progress = Float(actualQuestion+1)/Float(questions.count)
            } else if(questions[actualQuestion].answer==true){
                resultLabel.text = "Your answer was incorrect!"
                resultLabel.textColor = UIColor.red
            }
        default:
            print("Unknown option.")
        }
        
    }
    
}

