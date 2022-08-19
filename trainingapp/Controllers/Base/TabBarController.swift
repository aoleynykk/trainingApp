//
//  TabBarController.swift
//  trainingapp
//
//  Created by Олександр Олійник on 16.08.2022.
//

import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

class TabBarController: UITabBarController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        tabBar.barTintColor = Resourses.Colors.unselectedColor
        tabBar.tintColor = Resourses.Colors.selectedColor
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resourses.Colors.separatorColor.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overviewController = OverviewController()
        let sessionController = SessionController()
        let progressController = ProgressController()
        let settingsController = SettingsController()
        
        let overviewNavigationController = NavigationController(rootViewController: overviewController)
        let sessionNavigationController = NavigationController(rootViewController: sessionController)
        let progressNavigationController = NavigationController(rootViewController: progressController)
        let settingsNavigationController = NavigationController(rootViewController: settingsController)
        
        overviewNavigationController.tabBarItem = UITabBarItem(title: Resourses.ItemTitles.overview,
                                                               image: Resourses.Images.TabBar.overview,
                                                     tag: Tabs.overview.rawValue)
        
        sessionNavigationController.tabBarItem = UITabBarItem(title: Resourses.ItemTitles.session,
                                                    image: Resourses.Images.TabBar.session,
                                                    tag: Tabs.session.rawValue)
        
        progressNavigationController.tabBarItem = UITabBarItem(title: Resourses.ItemTitles.progress,
                                                     image: Resourses.Images.TabBar.progress,
                                                     tag: Tabs.progress.rawValue)
        
        settingsNavigationController.tabBarItem = UITabBarItem(title: Resourses.ItemTitles.settings,
                                                     image: Resourses.Images.TabBar.settings,
                                                     tag: Tabs.settings.rawValue)
        
        setViewControllers([overviewNavigationController, sessionNavigationController, progressNavigationController, settingsNavigationController] ,animated: true)
        
    }
}
