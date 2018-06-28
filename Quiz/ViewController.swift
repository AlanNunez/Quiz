
//  ViewController.swift
//  Quiz
//  Copyright © 2018 com.example.flia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let questions: [String] = ["What is 7+7?",
                               "What is the capital of Vermont?",
                               "What is the cognac made from?"]
    let answers: [String] = ["14",
                             "Montpelier",
                             "Grapes"]
    var currentQuestionIndex: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if(currentQuestionIndex == questions.count)
        {
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    @IBAction func ShowAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    func animatedLabelTransitions()
    {
        let animationClosure = { () -> Void in
            self.questionLabel.alpha = 1
        }
        UIView.animate(withDuration: 0.5, animations: animationClosure)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        questionLabel.alpha = 0
    }
}

