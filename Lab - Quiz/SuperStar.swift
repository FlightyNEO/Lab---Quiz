//
//  SuperStar.swift
//  Lab - Quiz
//
//  Created by Arkadiy Grigoryanc on 15/03/2019.
//  Copyright © 2019 Arkadiy Grigoryanc. All rights reserved.
//

import Foundation

enum SuperStar: String, CaseIterable {
    
    case starLord = "👻"
    case ironMan = "👮‍♂️"
    case hulk = "👨‍🦳"
    case spiderMan = "🕷"
    case captainAmerica = "🇦🇺"
    case vision = "📺"
    case doctorStrange = "👨‍⚕️"
    case rocketRaccoon = "🦡🚀"
    case blackPanther = "🐆"
    
    //    typealias RawValue = String
    //    var rawValue: String? { return nil }
    
    typealias FullName = (nickName: String, name: String?)
    
    var fullName: FullName {
        
        switch self {
        case .starLord: return (nickName: "Star-Lord", name: "Peter Jason Quill")
        case .ironMan: return (nickName: "Iron Man", name: "Anthony Edward \"Tony\" Stark")
        case .hulk: return (nickName: "Hulk", name: "Роберт Брюс Бэннер")
        case .spiderMan: return (nickName: "Spider-Man", name: "Peter Parker")
        case .captainAmerica: return (nickName: "Captain America", name: "Steven Rogers")
        case .vision: return (nickName: "Vision", name: "Victor Shade")
        case .doctorStrange: return (nickName: "Doctor Strange", name: "Dr. Stephen Vincent Strange")
        case .rocketRaccoon: return (nickName: "Rocket Raccoon", name: nil)
        case .blackPanther: return (nickName: "Black Panther", name: "Т’Чалла")
        }
        
    }
    
    
    
}
