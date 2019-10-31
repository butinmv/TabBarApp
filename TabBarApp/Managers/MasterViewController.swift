//
//  MasterViewController.swift
//  TabBarApp
//
//  Created by Максим Бутин on 31.10.2019.
//  Copyright © 2019 Максим Бутин. All rights reserved.
//

import UIKit

class MasterViewController: UITabBarController {
    
    var movieViewController: MovieViewController!
    var soonMovieViewController: SoonMovieViewController!
    var loginViewController: LoginViewController!
    var messagesViewController: MessageViewController!
    var ticketsViewController: TicketViewController!
    var settingsViewController: SettingsViewController!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBarController()
    }
    
    func configureTabBarController() {
        
        
        let movieVC = MovieViewController()
        let soonMovieVC = SoonMovieViewController()
        let loginVC = LoginViewController()
        let messagesVC = MessageViewController()
        // let ticketsVC = TicketViewController()
        let settingsVC = SettingsViewController()
        
        tabBarController?.viewControllers = [movieVC, soonMovieVC, loginVC, messagesVC, settingsVC]
        tabBarController?.selectedViewController = loginVC
        
        
    }
    
    

}
