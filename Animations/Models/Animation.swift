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
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(force)
        duration: \(duration)
        delay: \(delay)
        """
    }
    
    static func getAnimations(animationCount: Int) -> [Animation] {
        
        var result: [Animation] = []
        
        let presets = [
            "shake",
            "pop",
            "morph",
            "squeeze",
            "wobble",
            "swing",
            "flipX",
            "flipY",
            "fall",
            "squeezeLeft",
            "squeezeRight",
            "squeezeDown",
            "squeezeUp",
            "slideLeft",
            "slideRight",
            "slideDown",
            "slideUp",
            "fadeIn",
            "fadeOut",
            "fadeInLeft",
            "fadeInRight",
            "fadeInDown",
            "fadeInUp",
            "zoomIn",
            "zoomOut",
            "flash"
        ]
        
        let curves = [
            "spring",
            "linear",
            "easeIn",
            "easeOut",
            "easeInOut",
        ]
        
        for _ in 0...animationCount {
           
            guard let currentPreset = presets.randomElement() else { continue
            }
            
            guard let currentCurve = curves.randomElement() else {
                continue
            }
            
            result.append(
                Animation(
                    preset: currentPreset,
                    curve: currentCurve,
                    force: Double.random(in: 0.1...0.5),
                    duration: Double.random(in: 0.1...0.5),
                    delay: Double.random(in: 0.1...0.5)
                )
            )
        }

        return result
        
    }
    
}
