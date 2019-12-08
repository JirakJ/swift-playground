//
//  Question.swift
//  Quizzler
//
//  Created by Jakub Jirák on 08/12/2019.
//  Copyright © 2019 Jakub Jirák. All rights reserved.
//

import Foundation

struct Question {
    let question: String
    let answer: String
    
    init(question: String, answer: String){
        self.question = question
        self.answer = answer
    }
}
