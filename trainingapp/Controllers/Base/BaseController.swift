//
//  BaseController.swift
//  trainingapp
//
//  Created by Олександр Олійник on 16.08.2022.
//

import UIKit

enum NavButtonPosition {
    case left
    case right
}

class BaseController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        layoutViews()
        setup()
    }
    
    @objc dynamic func addViews() {  }
    
    @objc dynamic func layoutViews() {  }
    
    @objc dynamic func setup() {
        view.backgroundColor = Resourses.Colors.backgroundColor
    }
    
    
    @objc func leftButtonTapped() {
        print("left button tapped")
    }
    
    @objc func rightButtonTapped() {
        print("right button tapped")
    }
}

extension BaseController {
    
    func addNavButton(at position: NavButtonPosition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resourses.Colors.selectedColor, for: .normal)
        button.setTitleColor(Resourses.Colors.unselectedColor, for: .disabled)
        button.titleLabel?.font = Resourses.Fonts.font(size: 15)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(leftButtonTapped), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(rightButtonTapped), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}
