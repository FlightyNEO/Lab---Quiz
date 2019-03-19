//
//  Answer.swift
//  Lab - Quiz
//
//  Created by Arkadiy Grigoryanc on 15/03/2019.
//  Copyright © 2019 Arkadiy Grigoryanc. All rights reserved.
//

import Foundation

struct Answer: CustomDebugStringConvertible {
    
    var text: String
    var types: [SuperHero]
    
    var debugDescription: String {
        return "\(text) - \(types)"
    }
    
}
