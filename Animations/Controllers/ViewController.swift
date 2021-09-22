//
//  ViewController.swift
//  Animations
//
//  Created by Николай on 22.09.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var mainView: SpringView!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var mainButton: UIButton!
    
    private var currentIndex = 0
    private let animations = Animation.getAnimations().shuffled()
    private var currentAnimation: Animation {
        animations[currentIndex]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        runAnimationSetValues()
    }
    
    @IBAction func nextAnimationPressed(_ sender: UIButton) {
        runAnimationSetValues()
    }
    
    private func changeIndex() {
        currentIndex = (currentIndex == animations.count - 1) ? 0 : currentIndex + 1
    }
    
    private func runAnimation() {
       
        mainView.duration = CGFloat(currentAnimation.duration)
        mainView.delay = CGFloat(currentAnimation.delay)
        mainView.force = CGFloat(currentAnimation.force)
        mainView.animation = currentAnimation.preset
        mainView.curve = currentAnimation.curve
        
        mainView.animate()
        
    }
    
    private func setLabelTitle() {
        mainLabel.text = """
            preset: \(currentAnimation.preset)
            curve: \(currentAnimation.curve)
            force: \(currentAnimation.force)
            duration: \(currentAnimation.duration)
            delay: \(currentAnimation.delay)
            """
    }
    
    private func setButtonTitle() {
        let title = "Next animation: \(currentAnimation.preset)"
        mainButton.setTitle(title, for: .normal)
    }
    
    private func runAnimationSetValues() {
        
        setLabelTitle()
        runAnimation()
        changeIndex()
        setButtonTitle()
        
    }
    
}

