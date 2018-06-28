
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
    @IBOutlet var currentQuestionLabel: UILabel!
    @IBOutlet var nextQuestionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if(currentQuestionIndex == questions.count)
        {
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        nextQuestionLabel.text = question
        answerLabel.text = "???"
        
        animatedLabelTransitions()
    }
    @IBAction func ShowAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    func animatedLabelTransitions()
    {
            UIView.animate(withDuration: 0.5, animations: {() -> Void in
                self.currentQuestionLabel.alpha = 0
                self.nextQuestionLabel.alpha = 1
            })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentQuestionLabel.text = questions[currentQuestionIndex]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        nextQuestionLabel.alpha = 0
    }
}

