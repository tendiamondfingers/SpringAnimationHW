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
    @IBOutlet var infoAboutAnimationLabel: UILabel!
    
    private var animation = Animation.toGetAnimation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupInitialAnimation()
    }
    
    
    @IBAction func runButtonPressed(_ sender: UIButton) {
        performAnimation()
        updateInfoAboutAnimation()
        updateButtonTitle()
    }
    
    private func setupInitialAnimation() {
        infoAboutAnimationLabel.text = animation.description
    }
    
    private func performAnimation() {
        animetedView.animation = animation.preset
        animetedView.curve = animation.curve
        animetedView.force = animation.force
        animetedView.duration = animation.duration
        animetedView.delay = animation.delay
        
        animetedView.animate()
    }
    
    private func updateInfoAboutAnimation() {
        infoAboutAnimationLabel.text = animation.description
    }
    
    private func updateButtonTitle() {
        let nextAnimation = Animation.toGetAnimation()
        let buttonTitle = "Run \(nextAnimation.preset)"
        runButton.setTitle(buttonTitle, for: .normal)
        animation = nextAnimation
    }
}

