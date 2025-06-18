//
//  ViewController.swift
//  TrafficLight
//
//  Created by Mikhail Stepanov on 16.06.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    private let lightIsOn = CGFloat(1)
    private let lightIsOff = CGFloat(0.3)
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
    }

    @IBAction func startButtonPressed(_ sender: UIButton) {
        sender.setTitle("Next", for: .normal)
        
        if redLightView.alpha == yellowLightView.alpha {
            greenLightView.alpha = lightIsOff
            redLightView.alpha = lightIsOn
        } else if redLightView.alpha == lightIsOn {
            redLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOn
        } else if yellowLightView.alpha == lightIsOn {
            yellowLightView.alpha = lightIsOff
            greenLightView.alpha = lightIsOn
        }
    }
}

