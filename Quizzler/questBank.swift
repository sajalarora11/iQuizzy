//
//  questBank.swift
//  Quizzler
//
//  Created by Sajal Arora on 27/04/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class QuestBank {
    var arrQuest = [Question]()
    
    init() {
        arrQuest.append(Question(quest: "Valentine\'s day is banned in Saudi Arabia.", answer: true))
        
        arrQuest.append(Question(quest: "A slug\'s blood is green.", answer: true))
        
        arrQuest.append(Question(quest: "Approximately one quarter of human bones are in the feet.", answer: true))
        
        arrQuest.append(Question(quest: "The total surface area of two human lungs is approximately 70 square metres.", answer: true))
        
        arrQuest.append(Question(quest: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answer: true))
        
        arrQuest.append(Question(quest: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", answer: false))
        
        arrQuest.append(Question(quest: "It is illegal to pee in the Ocean in Portugal.", answer: true))
        
        arrQuest.append(Question(quest: "You can lead a cow down stairs but not up stairs.", answer: false))
        
        arrQuest.append(Question(quest: "Google was originally called \"Backrub\".", answer: true))
        
        arrQuest.append(Question(quest: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", answer: true))
        
        arrQuest.append(Question(quest: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answer: false))
        
        arrQuest.append(Question(quest: "No piece of square dry paper can be folded in half more than 7 times.", answer: false))
        
        arrQuest.append(Question(quest: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", answer: true))    // Creating a
    }
}
