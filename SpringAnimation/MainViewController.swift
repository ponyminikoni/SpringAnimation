//
//  MainViewController.swift
//  SpringAnimation
//
//  Created by Aaron Gulbudagyan on 26.02.2021.
//

import Spring

class MainViewController: UIViewController {
    
    @IBOutlet var lableOnView: UILabel!
    
    @IBOutlet var runButton: UIButton!
    
    @IBOutlet var animationView: SpringView!
    
    let animations = Animation.get()
    
    var nextAnimation: Animation! = nil
    
    @IBAction func runAnimation(_ sender: SpringButton) {
        
        var currentAnimation = animations.randomElement()!
        
        if nextAnimation != nil {
            currentAnimation = nextAnimation
        }
        
        animationView.animation = currentAnimation.name
        animationView.curve = currentAnimation.curve
        animationView.animate()
        
        lableOnView.text = """
Name: \(currentAnimation.name)
Curve: \(currentAnimation.curve)
Force: \(String(format: "%.1f", currentAnimation.force))
Duration: \(currentAnimation.duration)
Dalay: \(currentAnimation.deley)
"""
        
        nextAnimation = animations.randomElement()
        runButton.setTitle("Next: " + nextAnimation.name, for: .normal)
    }
}

