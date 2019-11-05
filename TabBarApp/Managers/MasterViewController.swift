//
//  MasterViewController.swift
//  TabBarApp
//
//  Created by Максим Бутин on 31.10.2019.
//  Copyright © 2019 Максим Бутин. All rights reserved.
//

import UIKit

class MasterViewController: UITabBarController {
    
    // MARK: - Properties
    lazy var loginViewController: LoginViewController = {
        return instantiateViewController(withStoryboardName: "Main", withIdentifier: "LoginViewController") as! LoginViewController
    }()
    
    lazy var settingViewController: SettingsViewController = {
        return instantiateViewController(withStoryboardName: "Main", withIdentifier: "SettingsViewController") as! SettingsViewController
    }()
    
    lazy var rulesViewController: RulesViewController = {
        return instantiateViewController(withStoryboardName: "Main", withIdentifier: "RulesViewController") as! RulesViewController
    }()
    
    lazy var ordersViewController: OrdersViewController = {
        return instantiateViewController(withStoryboardName: "Main", withIdentifier: "OrdersViewController") as! OrdersViewController
    }()
    
    lazy var messageViewController: MessagesViewController = {
        return instantiateViewController(withStoryboardName: "Main", withIdentifier: "MessagesViewController") as! MessagesViewController
    }()
    
    lazy var moreViewController: MoreViewController = {
        return instantiateViewController(withStoryboardName: "Main", withIdentifier: "MoreViewController") as! MoreViewController
    }()
    
    // MARK: - Method for instantiate view controller
    private func instantiateViewController(withStoryboardName storyboard: String, withIdentifier identifier: String) -> UIViewController {
        let storyboard = UIStoryboard(name: storyboard, bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: identifier)
        
        return viewController
    }
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBarController(authoriazation: false)
    }
    
    // MARK: - Configure tab bar controller
    private func configureTabBarController(authoriazation: Bool) {
        if !authoriazation {
            loginViewController.tabBarItem = UITabBarItem(title: "Login", image: #imageLiteral(resourceName: "login"), tag: 2)
            viewControllers?.insert(loginViewController, at: 2)
            
            
            settingViewController.tabBarItem = UITabBarItem(title: "Settings", image: #imageLiteral(resourceName: "Settings"), tag: 3)
            viewControllers?.insert(settingViewController, at: 3)
            
            rulesViewController.tabBarItem = UITabBarItem(title: "Rules", image: #imageLiteral(resourceName: "rules"), tag: 4)
            viewControllers?.insert(rulesViewController, at: 4)
            
            self.selectedViewController = loginViewController
        } else {
            ordersViewController.tabBarItem = UITabBarItem(title: "Orders", image: #imageLiteral(resourceName: "Tickets"), tag: 2)
            viewControllers?.insert(ordersViewController, at: 2)
            
            messageViewController.tabBarItem = UITabBarItem(title: "Messages", image: #imageLiteral(resourceName: "mail"), tag: 3)
            viewControllers?.insert(messageViewController, at: 3)
            
            moreViewController.tabBarItem = UITabBarItem(title: "More", image: #imageLiteral(resourceName: "more"), tag: 4)
            viewControllers?.insert(moreViewController, at: 4)
            
            self.selectedViewController = ordersViewController
        }
    }
}
