//
//  NavigationController.swift
//  trainingapp
//
//  Created by Олександр Олійник on 16.08.2022.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resourses.Colors.titleColor,
            .font: Resourses.Fonts.font(size: 17)
        ]
        navigationBar.addBottomBorder(color: Resourses.Colors.separatorColor, height: 1)
    }
}
