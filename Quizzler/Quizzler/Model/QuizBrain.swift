//
//  QuizLogic.swift
//  Quizzler
//
//  Created by Jakub Jirák on 08/12/2019.
//  Copyright © 2019 Jakub Jirák. All rights reserved.
//

import Foundation

struct QuizBrain {
    let questions = [
        Question(question: "Is 4 + 2 equal 6?", answer: "True"),
        Question(question: "Is London in UK?", answer: "True"),
        Question(question: "Is 4 - 2 equal 6?", answer: "False")
    ]
    
    var actualQuestion = 0
    
    //_ mean that I don't have to use usenAnswer: Bool when I call this method -> it's cool!
    func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == questions[actualQuestion].answer {
            //Here will be correct answer reaction
            return true
        } else {
            //Here will be false answer reaction
            return false
        }
    }
    
    mutating func actualQuestionUpdate() {
        self.actualQuestion += 1
        self.actualQuestion = actualQuestion%questions.count
    }
    
    func getCurrentQuestionText() -> String {
        return questions[actualQuestion].question
    }
    
    func updateProgressBar() -> Float {
        return Float(actualQuestion+1)/Float(questions.count)
    }
}
