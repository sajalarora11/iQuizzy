//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var allQues = QuestBank()
    var chosenAnswer: Bool = false
    var questNo: Int = 0
    var score: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let firstQues = allQues.arrQuest[0].quest
        questionLabel.text = firstQues
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            chosenAnswer = true
        } else if sender.tag == 2 {
            chosenAnswer = false
        }
        checkAnswer()
        nextQuestion()
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score: \(String(score))"
        progressLabel.text = "\(questNo+1) / 13"
        progressBar.frame.size.width = view.frame.size.width / 13 * CGFloat(questNo+1)
    }
    

    func nextQuestion() {
        if questNo <= 12 {
            let nxt = allQues.arrQuest[questNo].quest
            questionLabel.text = nxt
            updateUI()
        } else {
            //questNo = 0
            let alert = UIAlertController(title: "Superb!", message: "Great Job!, You have reached the end of quiz. Would you like to start from the beginning?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Resume", style: .default, handler: {(alert: UIAlertAction!) in self.startOver()}))
            present(alert, animated: true, completion: nil)
        }}
    
    
    func checkAnswer() {
        let correctAns = allQues.arrQuest[questNo].answer
        if chosenAnswer == correctAns {
            score = score + 10
            ProgressHUD.showSuccess("Correct!")
        } else {
            ProgressHUD.showError("Wront!")
        }
        questNo = questNo + 1
    }
    
    
    func startOver() {
        scoreLabel.text = "Score: 0"
        score = 0
        questNo = 0
        nextQuestion()
    }
    

    
}
