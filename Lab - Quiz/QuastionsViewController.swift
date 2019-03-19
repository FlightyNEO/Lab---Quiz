//
//  QuastionsViewController.swift
//  Lab - Quiz
//
//  Created by Arkadiy Grigoryanc on 14/03/2019.
//  Copyright © 2019 Arkadiy Grigoryanc. All rights reserved.
//

import UIKit

class QuastionsViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var singleQuestionView: SingleQuestionView!
    @IBOutlet weak var multipleQuestionView: MultipleQuestionView!
    @IBOutlet weak var rangedQuestionView: RangedQuestionView!
    
    // MARK: - Private properties
    private var questions: [Question] = []
    private var currentQuestionNumber = 0           // 3 - multiple, 14 - ranged, ather - single
    private var responceType = Question.ResponceType.single {
        didSet { displayQuestionView(by: responceType) }
    }
    private var currentQuestion: Question {
        return questions[currentQuestionNumber]
    }
    
    private var answers: [Answer] = []
    
    // MARK: - Life cicles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        singleQuestionView.delegate = self
        multipleQuestionView.delegate = self
        rangedQuestionView.delegate = self
        
        // Load question
        loadQuesions {
            updateUI()
        }
        
    }
    
    // MARK: - Private methods
    private func updateUI() {
        
        let question = currentQuestion
        
        // set responseType
        responceType = question.type
        
        // Set question
        setQuestion(question)
        
        // Set title
        title = "Question \(String(currentQuestionNumber + 1))/\(String(questions.count))"
        
        // update value progressView
        let progress = 1.0 / Float(questions.count + 1) * Float(currentQuestionNumber + 1)
        progressView.setProgress(progress, animated: true)
        
    }
    
    private func loadQuesions(completed: () -> ()) {
        ServerManager.manager.fetchQuations { (questions) in
            self.questions = questions
            completed()
        }
    }
    
    private func setQuestion(_ question: Question) {
        
        switch responceType {
        
        case .single: singleQuestionView.setQuestion(question)
            
        case .multiple: multipleQuestionView.setQuestion(question)
        
        case .ranged: rangedQuestionView.setQuestion(question)
            
        }
        
    }
    
    private func nextQuestion() {
        print(#function, "Next Question")
    }
    
    private func displayQuestionView(by responseType: Question.ResponceType) {
        
        switch responseType {
        case .single:
            singleQuestionView.isHidden = false
            multipleQuestionView.isHidden = true
            rangedQuestionView.isHidden = true
        case .multiple:
            singleQuestionView.isHidden = true
            multipleQuestionView.isHidden = false
            rangedQuestionView.isHidden = true
        case .ranged:
            singleQuestionView.isHidden = true
            multipleQuestionView.isHidden = true
            rangedQuestionView.isHidden = false
        }
        
    }
    
    private func writeTheAnswer(with text: String?) {
        
        switch responceType {
            
        case .single:
            
            guard let answer = currentQuestion.answers.first(where: { $0.text == text }) else { break }
            answers.append(answer)
            print(answer)
            
        case .multiple:
            
            let numberAnswers = multipleQuestionView.fetchNumbersOfChosenSwitches()
            let answers = currentQuestion.answers.enumerated().compactMap { numberAnswers.contains($0) ? $1 : nil }
            self.answers.append(contentsOf: answers)
            print(answers)
            
        case .ranged:
            
            let value = rangedQuestionView.fetchSliderValuew()
            let index = Int(round(value * Float(currentQuestion.answers.count - 1)))
            let answer = currentQuestion.answers[index]
            answers.append(answer)
            print(answer)
            
        }
        
    }
    
}

extension QuastionsViewController: QuestionViewDelegate {
    
    func didSelectReplyButton(with title: String?) {
        
        writeTheAnswer(with: title)
        
        nextQuestion()
        
    }
    
    
}
