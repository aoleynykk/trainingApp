//
//  CustomButton.swift
//  trainingapp
//
//  Created by Олександр Олійник on 17.08.2022.
//

import UIKit

class CustomButton: UIButton {
    
    private let label: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let buttonImage: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        layoutViews()
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CustomButton {
    
    func addViews() {
        addSubview(label)
        addSubview(buttonImage)
    }
    func layoutViews() {
        let buttonImageConstraints = [
            buttonImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            buttonImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            buttonImage.heightAnchor.constraint(equalToConstant: 5),
            buttonImage.widthAnchor.constraint(equalToConstant: 10)
        ]
        
        let labelConstraints = [
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: buttonImage.leadingAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ]
        
        NSLayoutConstraint.activate(buttonImageConstraints)
        NSLayoutConstraint.activate(labelConstraints)
        
    }
    func setup() {
        
        backgroundColor = Resourses.Colors.Overview.customButtonCollor
        layer.cornerRadius = 14
        addFlashing(self)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = Resourses.Colors.selectedColor
        label.font = Resourses.Fonts.font(size: 15)
        label.textAlignment = .center
        
        label.text = Resourses.Overview.customButtonTitle
        
        buttonImage.translatesAutoresizingMaskIntoConstraints = false
        buttonImage.image = Resourses.Images.Overview.customButtonImage?.withRenderingMode(.alwaysTemplate)
        buttonImage.tintColor = Resourses.Colors.selectedColor
       
    }
}
