//
//  MainViewController.swift
//  Lab - Quiz
//
//  Created by Arkadiy Grigoryanc on 14/03/2019.
//  Copyright © 2019 Arkadiy Grigoryanc. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet var emojiLabels: [UILabel]!
    
    // MARK: - Life cicles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setEmojiLabels()
        
    }
    
    // MARK: - Private methods
    private func setEmojiLabels() {
        let stars = SuperHero.allCases
        stars.enumerated().forEach { (offset, element) in
            
            emojiLabels[offset].text = element.rawValue
            
        }
    }
    
    // MARK: - Actions
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        
    }
    
}

