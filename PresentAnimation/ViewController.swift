//
//  ViewController.swift
//  PresentAnimation
//
//  Created by Rohan Rk on 10/26/18.
//  Copyright © 2018 Rohan Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var pinchView: UIView!
    @IBOutlet weak var start: UIButton!
    @IBOutlet weak var cancel: UIButton!
    @IBOutlet weak var effectView: UIVisualEffectView!
    
    var effect: UIVisualEffect!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        effect = effectView.effect
        effectView.effect = nil
        pinchView.layer.cornerRadius = 10
        
        start.clipsToBounds = true
        cancel.clipsToBounds = true
        
        start.layer.cornerRadius = 5
        cancel.layer.cornerRadius = 5
        start.layer.borderColor = UIColor.green.cgColor
        cancel.layer.borderColor = UIColor.red.cgColor
        
        start.layer.borderWidth = 2.0
        cancel.layer.borderWidth = 2.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func handleCancel(_ sender: Any) {
        UIView.animate(withDuration: 0.2, animations: {
            self.pinchView.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.pinchView.alpha = 0
            self.effectView.effect = nil
            
        }, completion: { _ in
            self.pinchView.removeFromSuperview()
        })
    }
    
    @IBAction func handlePinch(_ sender: UIPinchGestureRecognizer) {
        self.view.addSubview(pinchView)
        self.pinchView.center = self.view.center
        self.pinchView.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.pinchView.alpha = 0
        
        UIView.animate(withDuration: 0.4, animations: {
            self.effectView.effect = self.effect
            self.pinchView.alpha = 1
            self.pinchView.transform = CGAffineTransform.identity
        })
        
    }
    
}

