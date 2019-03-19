//
//  QuestionView.swift
//  Lab - Quiz
//
//  Created by Arkadiy Grigoryanc on 15/03/2019.
//  Copyright © 2019 Arkadiy Grigoryanc. All rights reserved.
//

import UIKit

protocol QuestionViewDelegate {
    func didSelectReplyButton(with title: String?)
}

class QuestionView: UIStackView {
    
    // MARK: - Outlets
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var replyButton: UIButton!
    
    var delegate: QuestionViewDelegate?
    
    // MARK: - Override methods
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        // Setting replyButton
        replyButton?.layer.masksToBounds = true
        replyButton?.layer.cornerRadius = replyButton.frame.height / 2
        
    }
    
    // MARK: - Methods
    func setQuestion(_ question: Question) {
        
        questionLabel.text = question.text
        
    }
    
    // MARK: - Actions
    @IBAction func actionReplyButton(_ sender: UIButton) {
        delegate?.didSelectReplyButton(with: nil)
    }
    
}
