//
//  RootViewController.swift
//  UIWithoutStoryboard
//
//  Created by stormhouse on 3/11/15.
//  Copyright (c) 2015 stormhouse. All rights reserved.
//

import UIKit
import Snap

class RootViewController: UIViewController {

    var innerView: UIView!
    var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        button = UIButton.buttonWithType(.System) as? UIButton
        self.view.addSubview(button)
        
        button.backgroundColor = UIColor.greenColor()
        button.setTitle("Press Me", forState: .Normal)
        button.setTitle("I'm Pressed", forState: .Highlighted)
        button.addTarget(self, action: "buttonIsPressed:", forControlEvents: .TouchDown)
        button.addTarget(self, action: "buttonIsTapped:", forControlEvents: .TouchUpInside)
//        button.frame = CGRect(x: 110, y: 70, width: 100, height: 44)

        button.snp_makeConstraints { make in
            make.center.equalTo(self.view).offset(CGPointMake(-5, 10))
            return // this return is a fix for implicit returns in Swift and is only required for single line constraints
        }

    }
    
    func buttonIsPressed(sender: UIButton){ println("Button is pressed.")}
    
    func buttonIsTapped(sender: UIButton){ println("Button is tapped.")}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
