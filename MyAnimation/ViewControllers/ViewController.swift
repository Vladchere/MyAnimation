//
//  ViewController.swift
//  MyAnimation
//
//  Created by Vladislav on 16.06.2020.
//  Copyright © 2020 Vladislav Cheremisov. All rights reserved.
//

import Spring

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var animationImageView: SpringImageView!
    @IBOutlet var runAnimationButton: SpringButton!
    @IBOutlet var codeTextView: UITextView!
    @IBOutlet var codeButton: SpringButton!
    @IBOutlet var repeatButton: UIButton!
    
    // MARK: - Private properties
    private let animations = Animation.getAnimations()
    private var countClick = 0
    private var codeText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
    }

    //MARK: - IB Actions
    @IBAction func runButtonPressed() {
        showNextAnimation()
        setButtonsAnimate(button: runAnimationButton)
    }
    
    @IBAction func codeButtonPressed() {
        showCode()
        setButtonsAnimate(button: codeButton)
    }
    
    @IBAction func repeatButtonPressed() {
        showCurrentAnimation()
    }
    
    //MARK: - Private methods
    private func showCode() {
        if codeTextView.isHidden {
            codeTextView.isHidden = false
            codeButton.setTitle("Hidden code", for: .normal)
        } else {
            codeButton.setTitle("Show code", for: .normal)
            codeTextView.isHidden = true
        }
    }
    
    private func setUI() {
        runAnimationButton.layer.cornerRadius = 10
        codeTextView.layer.cornerRadius = 10
        codeButton.layer.cornerRadius = 10
        repeatButton.layer.cornerRadius = 10
        codeTextView.isHidden = true
        codeTextView.isEditable = false
    }
    
    private func showCurrentAnimation() {
        animationImageView.animation = animations[countClick].animationPreset
        animationImageView.curve = animations[countClick].curve
        animationImageView.force = CGFloat(animations[countClick].force)
        animationImageView.duration = CGFloat(animations[countClick].duration)
        animationImageView.damping = CGFloat(animations[countClick].damping)
        animationImageView.velocity = CGFloat(animations[countClick].velocity)
        animationImageView.rotate = CGFloat(animations[countClick].rotate)
        animationImageView.animate()
    }
    
    private func showNextAnimation() {
        if countClick == animations.count - 1 {
            countClick = 0
        } else {
            showCurrentAnimation()
            setTextCode()
        }
        countClick += 1
    }
    
    private func setTextCode() {
        codeText = """
        layer.animation = \(animationImageView.animation)
        layer.curve     = \(animationImageView.curve)
        layer.force     = \(String(format: "%.1f", Float(animationImageView.force)))
        layer.duration  = \(String(format: "%.1f", Float(animationImageView.duration)))
        layer.damping   = \(String(format: "%.1f", Float(animationImageView.damping)))
        layer.velocity  = \(String(format: "%.1f", Float(animationImageView.velocity)))
        layer.rotate    = \(String(format: "%.1f", Float(animationImageView.rotate)))
        layer.animate()
        """
        codeTextView.text = codeText
    }
    
    private func setButtonsAnimate(button: SpringButton){
        button.animation = "shake"
        button.force = 0.1
        button.duration = 1.0
        button.animate()
    }
}

