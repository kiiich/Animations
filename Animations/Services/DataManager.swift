//
//  DataManager.swift
//  Animations
//
//  Created by Николай on 22.09.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let animations = [
        ("zoomIn", "easeIn", 0.2, 0.3, 0.8),
        ("pop", "spring", 0.5, 0.3, 0.4),
        ("flash", "spring", 0.2, 0.3, 0.6),
        ("wobble", "linear", 0.7, 0.2, 0.9),
        ("flipX", "spring", 0.3, 0.5, 0.2),
        ("flipY", "spring", 0.8, 0.2, 0.4),
        ("fall", "easeInCirc", 0.6, 0.2, 0.3),
        ("squeezeLeft", "spring", 0.2, 0.8, 0.2),
        ("squeezeRight", "easeOut", 0.7, 0.5, 0.1),
        ("squeezeUp", "spring", 0.2, 0.4, 0.1),
        ("fadeIn", "linear", 0.5, 0.5, 0.5)
    ]
    
    private init() {}
    
}
