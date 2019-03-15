//
//  QuastionsViewController.swift
//  Lab - Quiz
//
//  Created by Arkadiy Grigoryanc on 14/03/2019.
//  Copyright © 2019 Arkadiy Grigoryanc. All rights reserved.
//

import UIKit

class QuastionsViewController: UIViewController {
    
    @IBOutlet weak var singleQuestionView: SingleQuestionView!
    @IBOutlet weak var multipleQuestionView: MultipleQuestionView!
    @IBOutlet weak var rangedQuestionView: RangedQuestionView!
    
    private var questions: [Question] = []
    
    private var responceType = Question.ResponceType.single {
        didSet { showQuestionView(with: responceType) }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load question
        loadQuesions {
            // Set firstquestion
            set(question: questions[0])
        }
        
        //performSegue(withIdentifier: "Finish", sender: nil)
    }
    
    private func loadQuesions(completed: () -> ()) {
        ServerManager.manager.fetchQuations { (questions) in
            self.questions = questions
            completed()
        }
    }
    
    private func set(question: Question) {
        
        responceType = question.type
        
        switch responceType {
        
        case .single: singleQuestionView.setQuestion(question)
            
        case .multiple: question.answers.enumerated().forEach { multipleQuestionView.answerLabels[$0]?.text = $1.text }
        
        default: break
            
        }
        
    }
    
    private func showQuestionView(with responseType: Question.ResponceType) {
        
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
