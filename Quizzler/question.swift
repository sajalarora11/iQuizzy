//
//  question.swift
//  Quizzler
//
//  Created by Sajal Arora on 27/04/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    var quest: String
    var answer: Bool
    
    init(quest: String, answer: Bool) {
        self.quest = quest
        self.answer = answer
    }
}
