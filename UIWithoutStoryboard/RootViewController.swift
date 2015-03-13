//
//  RootViewController.swift
//  UIWithoutStoryboard
//
//  Created by stormhouse on 3/11/15.
//  Copyright (c) 2015 stormhouse. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    var innerView: UIView!
    var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let superview = self.view
        
        innerView = UIView()
        innerView.setTranslatesAutoresizingMaskIntoConstraints(false)
        innerView.backgroundColor = UIColor.darkGrayColor()
        superview.addSubview(innerView)
        
        let padding = UIEdgeInsetsMake(10, 10, 10, 10)
        
        superview.addConstraints([
            NSLayoutConstraint(
                item: innerView,
                attribute: NSLayoutAttribute.Top,
                relatedBy: NSLayoutRelation.Equal,
                toItem: superview,
                attribute: NSLayoutAttribute.Top,
                multiplier: 1.0,
                constant: padding.top
            ),
            NSLayoutConstraint(
                item: innerView,
                attribute: NSLayoutAttribute.Left,
                relatedBy: NSLayoutRelation.Equal,
                toItem: superview,
                attribute: NSLayoutAttribute.Left,
                multiplier: 1.0,
                constant: padding.left
            ),
            NSLayoutConstraint(
                item: innerView,
                attribute: NSLayoutAttribute.Bottom,
                relatedBy: NSLayoutRelation.Equal,
                toItem: superview,
                attribute: NSLayoutAttribute.Bottom,
                multiplier: 1.0,
                constant: -padding.bottom
            ),
            NSLayoutConstraint(
                item: innerView,
                attribute: NSLayoutAttribute.Right,
                relatedBy: NSLayoutRelation.Equal,
                toItem: superview,
                attribute: NSLayoutAttribute.Right,
                multiplier: 1.0,
                constant: -padding.right
            )
            ])
        
        button = UIButton.buttonWithType(.System) as? UIButton
        innerView.addSubview(button)
        
        button.backgroundColor = UIColor.greenColor()
//        button.frame = CGRect(x: 110, y: 70, width: 100, height: 44)

        button.snp_makeConstraints { make in
            make.left.right.and.bottom.equalTo(superview)
            make.top.equalTo(otherView)
            return // this return is a fix for implicit returns in Swift and is only required for single line constraints
        }
        button.setTitle("Press Me", forState: .Normal)
        button.setTitle("I'm Pressed", forState: .Highlighted)
        button.addTarget(self, action: "buttonIsPressed:", forControlEvents: .TouchDown)
        button.addTarget(self, action: "buttonIsTapped:", forControlEvents: .TouchUpInside)



        // Do any additional setup after loading the view.
    }
    
    func buttonIsPressed(sender: UIButton){ println("Button is pressed.")}
    
    func buttonIsTapped(sender: UIButton){ println("Button is tapped.")}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
