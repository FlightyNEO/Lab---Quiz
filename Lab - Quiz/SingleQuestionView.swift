//
//  SingleQuestionView.swift
//  Lab - Quiz
//
//  Created by Arkadiy Grigoryanc on 15/03/2019.
//  Copyright © 2019 Arkadiy Grigoryanc. All rights reserved.
//

import UIKit

class SingleQuestionView: QuestionView {
    
    @IBOutlet weak var answerOneButton: UIButton!
    @IBOutlet weak var answerTwoButton: UIButton!
    @IBOutlet weak var answerThreeButton: UIButton!
    @IBOutlet weak var answerFourButton: UIButton!
    
    private var answerButtons: [UIButton?] {
        return [answerOneButton, answerTwoButton, answerThreeButton, answerFourButton]
    }
    
    override func setQuestion(_ question: Question) {
        super.setQuestion(question)
        
        question.answers.enumerated().forEach {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = .center
            let attributes = [NSAttributedString.Key.paragraphStyle: paragraphStyle]
            let string = NSAttributedString(string: $1.text, attributes: attributes)
            
            answerButtons[$0]?.setAttributedTitle(string, for: [])
        }
        
    }
    
}
