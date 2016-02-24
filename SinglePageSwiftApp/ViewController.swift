//
//  ViewController.swift
//  SinglePageSwiftApp
//
//  Created by Michael Alford on 2/18/16.
//  Copyright © 2016 Michael Alford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var shakeButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    let results = Results()
    
    
    
    @IBAction func shakeBall() {
        resultLabel.text = results.getRandomResult()
        //shakeButton.setTitle("Shake again.", forState: UIControlState.Normal)
        
        let bounds = self.shakeButton.bounds
        UIView.animateWithDuration(0.5, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 10, options: .AllowAnimatedContent , animations: {
            self.shakeButton.bounds = CGRect(x: bounds.origin.x - 20, y: bounds.origin.y, width: bounds.size.width + 60, height: bounds.size.height)
            
            }, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

