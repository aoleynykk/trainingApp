//
//  CustomOverviewBar.swift
//  trainingapp
//
//  Created by Олександр Олійник on 18.08.2022.
//

import Foundation
import UIKit

class CustomOverviewBar: BaseView {
    
    private let titleLabel = UILabel()
    
    private let workoutButton = CustomButton()
    
    private let addButton = UIButton()
    
    private let weekView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addBottomBorder(color: Resourses.Colors.separatorColor, height: 1)
    }
    
    func addWorkoutAction(_ action: Selector, with target: Any?) {
        workoutButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func addAdditingAction(_ action: Selector, with target: Any?) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
}

extension CustomOverviewBar {
    
    override func addViews() {
        super.addViews()
        addView(workoutButton)
        addView(titleLabel)
        addView(addButton)
        addView(weekView)
        
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        let weekViewConstraints = [
            weekView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 16),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            weekView.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let addButtonConstraints = [
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28)
        ]
        
        let workoutButtonConstraints = [
            workoutButton.heightAnchor.constraint(equalToConstant: 28),
            workoutButton.widthAnchor.constraint(equalToConstant: 130),
            workoutButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            workoutButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -16)
        ]
        
        let titleLabelConstraints = [
            titleLabel.centerYAnchor.constraint(equalTo: workoutButton.centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: workoutButton.leadingAnchor)
        ]
        
        NSLayoutConstraint.activate(weekViewConstraints)
        NSLayoutConstraint.activate(addButtonConstraints)
        NSLayoutConstraint.activate(workoutButtonConstraints)
        NSLayoutConstraint.activate(titleLabelConstraints)
    }

    
    override func setup() {
        super.setup()
        
        backgroundColor = .white
        
        titleLabel.text = Resourses.Overview.title
        titleLabel.textColor = Resourses.Colors.titleColor
        titleLabel.font = Resourses.Fonts.font(size: 22)
       
        addButton.setImage(Resourses.Overview.addButtonImage, for: .normal)
        
    }
}
