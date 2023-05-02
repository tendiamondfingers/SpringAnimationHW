//
//  Animation.swift
//  SpringAnimationHW
//
//  Created by Сергей Захаров on 02.05.2023.
//

struct Animation {
    let preset: String
    let curve: String
    
    let force: Double
    let duration: Double
    let delay: Double
    let damping: Double
    
    static func toGetAnimation() -> Animation {
        let preset = DataStore.shared.presets.randomElement()?.rawValue ?? "shake"
        let curve = DataStore.shared.curves.randomElement()?.rawValue ?? "easeIn"
        
        let force = Double.random(in: 0.5...1.5)
        let duration = Double.random(in: 1.0...2.0)
        let delay = Double.random(in: 0.2...0.5)
        let damping = Double.random(in: 0.5...0.8)
        
        return Animation(
            preset: preset,
            curve: curve,
            force: force,
            duration: duration,
            delay: delay,
            damping: damping
        )
    }
}
