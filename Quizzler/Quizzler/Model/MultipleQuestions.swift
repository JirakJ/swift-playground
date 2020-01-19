//
// Created by Jakub Jirák on 08/12/2019.
// Copyright (c) 2019 Jakub Jirák. All rights reserved.
//

import Foundation

struct MultipleQuestions{
    let question: String
    let answer: String
    let options: [String]

    init(question: String, answer: String, options: [String]){
        self.question = question
        self.answer = answer
        self.options = options
    }
}