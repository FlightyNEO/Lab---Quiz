//
//  MultipleQuestionView.swift
//  Lab - Quiz
//
//  Created by Arkadiy Grigoryanc on 15/03/2019.
//  Copyright © 2019 Arkadiy Grigoryanc. All rights reserved.
//

import UIKit

final class MultipleQuestionView: QuestionView {
    
    // MARK: - Outlets
    @IBOutlet weak var answerOneLabel: UILabel!
    @IBOutlet weak var answerTwoLabel: UILabel!
    @IBOutlet weak var answerThreeLabel: UILabel!
    @IBOutlet weak var answerFourLabel: UILabel!
    
    @IBOutlet weak var answerOneSwitch: UISwitch!
    @IBOutlet weak var answerThwSwitch: UISwitch!
    @IBOutlet weak var answerThreeSwitch: UISwitch!
    @IBOutlet weak var answerFourSwitch: UISwitch!
    
    // MARK: - Private properties
    private var answerLabels: [UILabel?] {
        return [answerOneLabel, answerTwoLabel, answerThreeLabel, answerFourLabel]
    }
    
    // MARK: - Override methods
    override func setQuestion(_ question: Question) {
        super.setQuestion(question)
        
        question.answers.enumerated().forEach { answerLabels[$0]?.text = $1.text }
        
    }
        
}
