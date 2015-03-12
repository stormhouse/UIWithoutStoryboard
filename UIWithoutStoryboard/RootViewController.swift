//
//  RootViewController.swift
//  UIWithoutStoryboard
//
//  Created by stormhouse on 3/11/15.
//  Copyright (c) 2015 stormhouse. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        button = UIButton.buttonWithType(.System) as? UIButton
        button.frame = CGRect(x: 110, y: 70, width: 100, height: 44)
        button.setTitle("Press Me", forState: .Normal)
        button.setTitle("I'm Pressed", forState: .Highlighted)
        button.addTarget(self, action: "buttonIsPressed:", forControlEvents: .TouchDown)
        button.addTarget(self, action: "buttonIsTapped:", forControlEvents: .TouchUpInside)

        self.view.addSubview(button)

        // Do any additional setup after loading the view.
    }
    
    func buttonIsPressed(sender: UIButton){ println("Button is pressed.")}
    
    func buttonIsTapped(sender: UIButton){ println("Button is tapped.")}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
