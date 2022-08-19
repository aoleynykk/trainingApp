//
//  OverviewController.swift
//  trainingapp
//
//  Created by Олександр Олійник on 16.08.2022.
//

import UIKit

class OverviewController: BaseController {
    
    private let workoutButton = CustomButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = Resourses.Overview.title
    }
}

@objc extension OverviewController {
    
    override func addViews() {
        super.addViews()
        view.addSubview(workoutButton)
    }
    
    override func layoutViews() {
        super.layoutViews()
        let workoutButtonConstraints = [
            workoutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            workoutButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            workoutButton.widthAnchor.constraint(equalToConstant: 130),
            workoutButton.heightAnchor.constraint(equalToConstant: 28)
        ]
        
        NSLayoutConstraint.activate(workoutButtonConstraints)
    }
    
    override func setup() {
        super.setup()
        workoutButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
}
