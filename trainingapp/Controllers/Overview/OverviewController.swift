//
//  OverviewController.swift
//  trainingapp
//
//  Created by Олександр Олійник on 16.08.2022.
//

import UIKit

class OverviewController: BaseController {
    
    private let overviewBar = CustomOverviewBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = Resourses.Overview.title
    }
    
}

@objc extension OverviewController {
    
    override func addViews() {
        super.addViews()
        view.addView(overviewBar)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        let overviewBarConstraints = [
            overviewBar.topAnchor.constraint(equalTo: view.topAnchor),
            overviewBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            overviewBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ]
        
        NSLayoutConstraint.activate(overviewBarConstraints)
    }
    
    override func setup() {
        super.setup()
        navigationController?.navigationBar.isHidden = true
        
        overviewBar.addWorkoutAction(#selector(customWorkoutButtonPressed), with: self)
        overviewBar.addAdditingAction(#selector(addButtonPressed), with: self)
        
        
    }
}

extension OverviewController {
    
    @objc func customWorkoutButtonPressed() {
        print("custom button pressed")
    }
    
    @objc func addButtonPressed() {
        print("add button pressed")
    }
}
