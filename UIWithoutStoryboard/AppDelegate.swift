//
//  AppDelegate.swift
//  UIWithoutStoryboard
//
//  Created by stormhouse on 3/11/15.
//  Copyright (c) 2015 stormhouse. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window!.backgroundColor = UIColor.darkGrayColor()
        self.window!.makeKeyAndVisible()
        
        let controller = RootViewController()
        self.window!.rootViewController = controller
        
        return true
    }
}

