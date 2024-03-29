//
//  AppDelegate.swift
//  TabBarApp
//
//  Created by Максим Бутин on 31.10.2019.
//  Copyright © 2019 Максим Бутин. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        //let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        //let masterViewController = storyboard.instantiateViewController(withIdentifier: "MasterViewController") as! MasterViewController
        
        self.window?.makeKeyAndVisible()
        self.window?.rootViewController = MasterViewController()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

}

//extension AppDelegate {
//    static var shared: AppDelegate {
//        return UIApplication.shared.delegate as! AppDelegate
//    }
//
//    var rootViewController: UITabBarController {
//        return window!.rootViewController as! UITabBarController
//    }
//}
