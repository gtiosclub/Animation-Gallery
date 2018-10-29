//
//  TranslateViewController.swift
//  PresentAnimation
//
//  Created by Rohan Rk on 10/28/18.
//  Copyright © 2018 Rohan Rk. All rights reserved.
//

import UIKit

class TranslateViewController: UIViewController {

    @IBOutlet weak var animate: UIView!
    @IBOutlet weak var constraint: NSLayoutConstraint!
    var const: CGFloat = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animate.backgroundColor = UIColor.random()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        UIView.animate(withDuration: 0.5, animations: {
            self.constraint.constant = self.const
            if self.const == 100 {
                self.const = -100
            } else {
                self.const = 100
            }
            self.view.layoutIfNeeded()
        })
        

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
