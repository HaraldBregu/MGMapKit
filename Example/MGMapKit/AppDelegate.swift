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
class AppDelegate: UIResponder, UIApplicationDelegate, MGMapControllerDataSource, MGMapControllerDelegate {
    var window: UIWindow?
    var map:MGMap!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)

        let controller = MGMapController.controller
        controller.dataSource = self
        controller.assets = Assets.assets

        window?.rootViewController = UINavigationController(rootViewController: controller)
        window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


    
    func controller(_ controller: MGMapController, didTapBarButtonItem barButtonItem: UIBarButtonItem) {
        print("Navigation item is: \(String(describing: barButtonItem.accessibilityIdentifier))")
    }
    
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
    
    var items: [MGMap] {
        var items:[MGMap] = []
        
        let london = MGMap()
        london.location = "London"
        london.latitude = 51.507222
        london.longitude = -0.1275
        items.append(london)
        
        let berlin = MGMap()
        berlin.location = "Berlin"
        berlin.latitude = 52.520008
        berlin.longitude = 13.404954
        items.append(berlin)
        
        let lyon = MGMap()
        lyon.location = "Lyon"
        lyon.latitude = 45.74846
        lyon.longitude = 4.84671
        items.append(lyon)
        
        let madrid = MGMap()
        madrid.location = "Madrid"
        madrid.latitude = 40.416775
        madrid.longitude = -3.703790
        items.append(madrid)
        
        let milano = MGMap()
        milano.location = "Milano"
        milano.latitude = 45.46427
        milano.longitude = 9.18951
        items.append(milano)
        
        let durres = MGMap()
        durres.location = "Durrës"
        durres.latitude = 41.32306
        durres.longitude = 19.44139
        items.append(durres)
        
        return items
        
    }
}

