//
//  QuestionView.swift
//  Lab - Quiz
//
//  Created by Arkadiy Grigoryanc on 15/03/2019.
//  Copyright © 2019 Arkadiy Grigoryanc. All rights reserved.
//

import UIKit

class QuestionView: UIStackView {
    
    @IBOutlet weak var questionLabel: UILabel?
    
    @IBOutlet weak var replyButton: UIButton?
    
    func setQuestion(_ question: Question) {
        
        questionLabel?.text = question.text
        
    }
    
}
