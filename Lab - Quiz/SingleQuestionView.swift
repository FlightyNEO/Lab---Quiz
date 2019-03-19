//
//  SingleQuestionView.swift
//  Lab - Quiz
//
//  Created by Arkadiy Grigoryanc on 15/03/2019.
//  Copyright © 2019 Arkadiy Grigoryanc. All rights reserved.
//

import UIKit

final class SingleQuestionView: QuestionView {
    
    // MARK: - Outlets
    @IBOutlet weak var answerOneButton: UIButton!
    @IBOutlet weak var answerTwoButton: UIButton!
    @IBOutlet weak var answerThreeButton: UIButton!
    @IBOutlet weak var answerFourButton: UIButton!
    
    // MARK: - Private properties
    private var answerButtons: [UIButton?] {
        return [answerOneButton, answerTwoButton, answerThreeButton, answerFourButton]
    }
    
    private var layerBorderButtons: [CALayer] = []
    
    // MARK: - Life cicles
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        settingButtons()
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        answerButtons.forEach { $0?.layer.layoutIfNeeded() }
        
    }
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        
        updateBorderFrame()
        
    }
    
    // MARK: - Override methods
    override func setQuestion(_ question: Question) {
        super.setQuestion(question)
        
        question.answers.enumerated().forEach {
            
            let title = constructAttributedTitle(with: $1.text)
            
            answerButtons[$0]?.setAttributedTitle(title, for: [])
            
        }
        
    }
    
    // MARK: - Private methods
    private func constructAttributedTitle(with text: String) -> NSAttributedString {
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        let attributes = [NSAttributedString.Key.paragraphStyle: paragraphStyle]
        
        return NSAttributedString(string: text, attributes: attributes)
        
    }
    
    private func settingButtons() {
        
        answerButtons.forEach { (button) in
            
            button?.titleLabel?.numberOfLines = 0
            button?.titleLabel?.lineBreakMode = .byWordWrapping
            button?.titleLabel?.textAlignment = .center
            button?.layer.masksToBounds = false
            let borderLayer = createBottomBorderWithColor(UIColor.blue, frame: button!.frame)
            layerBorderButtons.append(borderLayer)
            button?.layer.addSublayer(borderLayer)
            
        }
        
    }
    
    private func createBottomBorderWithColor(_ color: UIColor, frame: CGRect) -> CALayer {
        
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = frameForBottomBorderLayer(by: frame)
        return border
        
    }
    
    private func updateBorderFrame() {
        guard answerButtons.count == layerBorderButtons.count else { return }
        answerButtons.enumerated().forEach { offset, button in
            
            if let frame = button?.frame {
                layerBorderButtons[offset].frame = frameForBottomBorderLayer(by: frame)
            }
            
        }
    }
    
    private func frameForBottomBorderLayer(by frame: CGRect) -> CGRect {
        return CGRect(x: 0, y: frame.height - 2, width: frame.width, height: 2)
    }
    
    // MARK: - Actions
    override func actionReplyButton(_ sender: UIButton) {
        
        delegate?.didSelectReplyButton(with: sender.titleLabel?.text)
        
    }
    
}
