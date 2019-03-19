//
//  Array (Extension).swift
//  Lab - Quiz
//
//  Created by Arkadiy Grigoryanc on 20/03/2019.
//  Copyright © 2019 Arkadiy Grigoryanc. All rights reserved.
//

import Foundation

extension Array where Element: Hashable {
    
    var histogram: [Element : Int] {
        return self.reduce(into: [:], { $0[$1, default: 0] += 1 } )
    }
    
}
