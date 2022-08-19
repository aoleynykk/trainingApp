//
//  CustomOverviewBar.swift
//  trainingapp
//
//  Created by Олександр Олійник on 18.08.2022.
//

import Foundation

class CustomOverviewBar: BaseView {
    
}

extension CustomOverviewBar {
    
    override func addViews() {
        super.addViews()
    }
    
    override func layoutViews() {
        super.layoutViews()
    }
    
    override func setup() {
        super.setup()
        backgroundColor = .white
        addBottomBorder(color: Resourses.Colors.separatorColor, height: 1)
    }
}
