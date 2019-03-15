//
//  Question.swift
//  Lab - Quiz
//
//  Created by Arkadiy Grigoryanc on 15/03/2019.
//  Copyright © 2019 Arkadiy Grigoryanc. All rights reserved.
//

import Foundation

struct Question {
    
    var text: String
    var type: ResponceType
    var answers: [Answer]
    
    enum ResponceType {
        case single, multiple, ranged
    }
    
}
