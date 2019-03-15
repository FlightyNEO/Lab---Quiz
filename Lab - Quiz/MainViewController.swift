//
//  MainViewController.swift
//  Lab - Quiz
//
//  Created by Arkadiy Grigoryanc on 14/03/2019.
//  Copyright © 2019 Arkadiy Grigoryanc. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var emojiLabels: [UILabel]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stars = SuperStar.allCases
        stars.enumerated().forEach { (offset, element) in
            
            emojiLabels[offset].text = element.rawValue
            
        }
        
    }
    
    // MARK: - Actions
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        
    }
    
}

