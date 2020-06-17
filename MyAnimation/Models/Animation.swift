//
//  Animation.swift
//  MyAnimation
//
//  Created by Vladislav on 17.06.2020.
//  Copyright © 2020 Vladislav Cheremisov. All rights reserved.
//
import Foundation

struct Animation {
    let animationPreset: String
    let curve: String
    let force: Float
    let duration: Float
    let damping: Float
    let velocity: Float
    let rotate: Float
    
    static func getAnimations() -> [Animation] {
        
        var animations: [Animation] = []
        
        let animationPresets = DataManager.shared.animationPresets.shuffled()
        let curves = DataManager.shared.curves.shuffled()
        
        for index in 0..<animationPresets.count {
            let animation = Animation(animationPreset: animationPresets[index],
                                      curve: curves[index],
                                      force: Float.random(in: 0.1...0.5),
                                      duration: Float.random(in: 0.5...0.6),
                                      damping: Float.random(in: 0.0...0.5),
                                      velocity: Float.random(in: 0.0...0.2),
                                      rotate: Float.random(in: 0.0...0.2))
            animations.append(animation)
        }
        
        return animations
    }
}
