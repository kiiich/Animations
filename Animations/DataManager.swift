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
        ("zoomIn", "spring", 0.5, 0.5, 0.5),
        ("pop", "spring", 0.5, 0.5, 0.5),
        ("morth", "spring", 0.5, 0.5, 0.5),
        ("wobble", "spring", 0.5, 0.5, 0.5),
        ("flipX", "spring", 0.5, 0.5, 0.5),
        ("flipY", "spring", 0.5, 0.5, 0.5),
        ("fall", "spring", 0.5, 0.5, 0.5),
        ("squeezeLeft", "spring", 0.5, 0.5, 0.5),
        ("squeezeRight", "spring", 0.5, 0.5, 0.5),
        ("squeezeUp", "spring", 0.5, 0.5, 0.5),
        ("fadeIn", "spring", 0.5, 0.5, 0.5)
    ]
    
    private init() {}
    
}
