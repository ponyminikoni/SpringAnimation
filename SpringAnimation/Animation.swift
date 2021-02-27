//
//  Animation.swift
//  SpringAnimation
//
//  Created by Aaron Gulbudagyan on 26.02.2021.
//
import Spring

struct Animation {
    
    let name: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let deley: CGFloat
}

extension Animation {
    
    static func getAnimation() -> [Animation] {
        
        var animations: [Animation] = []
        
        for _ in 1...10 {
            
            let name = Spring.AnimationPreset.allCases.randomElement()!.rawValue
            let curve = Spring.AnimationCurve.allCases.randomElement()!.rawValue
            
            let animation = Animation(name: name,
                                      curve: curve,
                                      force: .random(in: 0.3...1),
                                      duration: 2,
                                      deley: 0.5)
            
            animations.append(animation)
        }
        return animations
    }
}

