//
//  Animation.swift
//  Animations
//
//  Created by Николай on 22.09.2021.
//

import Foundation

struct Animation {
    
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimations() -> [Animation] {
        
        var result: [Animation] = []
        
        for animation in DataManager.shared.animations {
            result.append(
                Animation(
                    preset: animation.0,
                    curve: animation.1,
                    force: animation.2,
                    duration: animation.3,
                    delay: animation.4
                )
            )
        }

        return result
        
    }
    
}
