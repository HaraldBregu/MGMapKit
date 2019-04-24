//
//  AppDelegate.swift
//  MGMapKit
//
//  Created by AldoOS on 03/31/2019.
//  Copyright (c) 2019 AldoOS. All rights reserved.
//

import UIKit
import MGMapKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)

        let mapController = MGMapController.instance
        mapController.assets = Assets.assets
        mapController.dataSource = self
        mapController.delegate = self

        window?.rootViewController = UINavigationController(rootViewController: mapController)
        window?.makeKeyAndVisible()
        return true
    }
    
}


extension AppDelegate: MGMapControllerDataSource, MGMapControllerDelegate {
    
    func leftBarButtonItems(_ controller: MGMapController) -> [UIBarButtonItem] {
       
        let button1 = UIBarButtonItem()
        button1.image = #imageLiteral(resourceName: "menu")
        button1.style = .plain
        button1.accessibilityIdentifier = "First"
        
        let button2 = UIBarButtonItem()
        button2.image = #imageLiteral(resourceName: "menu")
        button2.style = .plain
        button2.accessibilityIdentifier = "Second"
        
        return [button1, button2]
    }
    
    func controller(_ controller: MGMapController, didTapBarButtonItem barButtonItem: UIBarButtonItem) {
        print("Navigation item is: \(String(describing: barButtonItem.accessibilityIdentifier))")
    }
    
}
