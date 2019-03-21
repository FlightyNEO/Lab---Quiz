//
//  MainViewController.swift
//  Lab - Quiz
//
//  Created by Arkadiy Grigoryanc on 14/03/2019.
//  Copyright © 2019 Arkadiy Grigoryanc. All rights reserved.
//

import UIKit
import Lottie

class MainViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var animationView: LOTAnimationView!
    
    // MARK: - Private properties
    private let startTestIdentifier = "StartTest"
    
    // MARK: - Life cicles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addAnimationHero()
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        stopAnimation()
    }
    
    private func addAnimationHero() {
        
        animationView.setAnimation(named: "5071-hero-and-cape")
        animationView.animationSpeed = 1
        animationView.loopAnimation = true
        animationView.autoReverseAnimation = false
        
    }
    
    private func startAnimation(complition: @escaping () -> ()) {
        
        animationView.play()
        
        UIView.animate(withDuration: 2, delay: 0, options: .curveEaseIn, animations: {
            
            let translateX = self.animationView.frame.minX + 50
            let translateY = self.animationView.frame.maxY + 50
            
            let translate = CGAffineTransform(translationX: -translateX, y: -translateY)
            let rotate = CGAffineTransform(rotationAngle: CGFloat(15.0.radians()))
            
            self.animationView.transform = translate.concatenating(rotate)
            
        }) { (_) in
            
            complition()
            
        }
        
    }
    
    private func stopAnimation() {
        
        animationView.stop()
        animationView.transform = CGAffineTransform.identity
        
    }
    
    // MARK: - Actions
    @IBAction func actionStartTest(_ sender: UIButton) {
        
        sender.isUserInteractionEnabled = false
        
        startAnimation {
            self.performSegue(withIdentifier: self.startTestIdentifier, sender: nil)
            sender.isUserInteractionEnabled = true
        }
        
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        
    }
    
}
