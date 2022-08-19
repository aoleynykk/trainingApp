//
//  BaseView.swift
//  trainingapp
//
//  Created by Олександр Олійник on 18.08.2022.
//

import UIKit

class BaseView: UIView {
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

@objc extension BaseView {
    func addViews() {  }
    func layoutViews() {  }
    func setup() {  }
}
