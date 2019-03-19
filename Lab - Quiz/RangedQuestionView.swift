//
//  RangedQuestionView.swift
//  Lab - Quiz
//
//  Created by Arkadiy Grigoryanc on 15/03/2019.
//  Copyright © 2019 Arkadiy Grigoryanc. All rights reserved.
//

import UIKit

final class RangedQuestionView: QuestionView {
    
    // MARK: - Outlets
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    
    @IBOutlet weak var answerSlider: UISlider!
    
    // MARK: - Methods
    func fetchSliderValuew() -> Float {
        return answerSlider.value
    }
    
    // MARK: - Override methods
    override func setQuestion(_ question: Question) {
        leftLabel.text = question.answers.first?.text
        rightLabel.text = question.answers.last?.text
    }
    
}
