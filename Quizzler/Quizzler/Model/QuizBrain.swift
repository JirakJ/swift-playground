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
        MultipleQuestions(question: "What is result of 6 - 2?", answer: "4", options: ["2","4","6"]),
        MultipleQuestions(question: "What is result of 4 + 2 ?", answer: "6", options: ["2","4","6"])
    ]
    
    var actualQuestion = 0

    var correctAnswers = 0
    var falseAnswers = 0
    
    //_ mean that I don't have to use usenAnswer: Bool when I call this method -> it's cool!
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == questions[actualQuestion].answer {
            //Here will be correct answer reaction
            correctAnswers += 1
            return true
        } else {
            //Here will be false answer reaction
            falseAnswers += 1
            return false
        }

    }
    
    mutating func actualQuestionUpdate() {
        self.actualQuestion += 1
        self.actualQuestion = actualQuestion%questions.count
    }
    
    func getButtonLabel1() -> String {
        return "Correct: \(correctAnswers) | False: \(falseAnswers)"
    }

    func getScore() -> String {
        return "Correct: \(correctAnswers) | False: \(falseAnswers)"
    }

    func getCurrentQuestionText() -> String {
        return questions[actualQuestion].question
    }
    
    func updateProgressBar() -> Float {
        return Float(actualQuestion+1)/Float(questions.count)
    }
}
