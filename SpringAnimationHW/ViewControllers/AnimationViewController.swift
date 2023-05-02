//
//  ViewController.swift
//  SpringAnimationHW
//
//  Created by Сергей Захаров on 02.05.2023.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    
    @IBOutlet var animetedView: SpringView!
    @IBOutlet var runButton: UIButton!
    
    private var animation = Animation.toGetAnimation()
    
    
    @IBAction func runButtonPressed(_ sender: UIButton) {
        setupAnimation()
        animetedView.animate()
        updateButtonTitle()
        
    }
    
    private func setupAnimation() {
        animetedView.animation = animation.preset
        animetedView.curve = animation.curve
        animetedView.force = animation.force
        animetedView.duration = animation.duration
        animetedView.delay = animation.delay
        
        animation = Animation.toGetAnimation()
    }
    
    private func updateButtonTitle() {
        runButton.setTitle("Run \(animation.preset)", for: .normal)
    }
}

