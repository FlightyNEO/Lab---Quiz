//
//  ResultViewController.swift
//  Lab - Quiz
//
//  Created by Arkadiy Grigoryanc on 14/03/2019.
//  Copyright © 2019 Arkadiy Grigoryanc. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    // MARK: - Properties
    var response: [Answer]!
    
    // MARK: - Life cicles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        calculateResult { (value) in
            displayResult(by: value!.superHero)
        }
        
    }
    
    // MARK: - Private methods
    private func calculateResult(completed: ((superHero: SuperHero, count: Int)?) -> ()) {
        
        let typesFrequency = response.flatMap { $0.types }  // all types [type]
        let countsTypes = typesFrequency.reduce(into: [:]) { $0[$1, default: 0] += 1 } // [type : count]
        let maxType = countsTypes.max { $0.value < $1.value }   // max count type (type : count)
        
        let result: (superHero: SuperHero, count: Int) = (superHero: maxType!.key, count: maxType!.value)
        completed(result)
        
//        print("--------------------")
//        print("All types", typesFrequency)
//        print("Count types", countsTypes)
//        print("Result", result)
//        print("--------------------")
        
    }
    
    private func displayResult(by superHero: SuperHero) {
        
        title = superHero.fullName.name
        
        resultLabel.text = "Вы - \(String(superHero.fullName.name)), \(superHero.fullName.nickName) \(superHero.rawValue)!"
        descriptionTextView.text = superHero.description
        
    }
    
}
