//
//  SessionController.swift
//  trainingapp
//
//  Created by Олександр Олійник on 16.08.2022.
//

import UIKit

class SessionController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = Resourses.Session.title
        addNavButton(at: .left, with: Resourses.Session.leftButtonTitle)
        addNavButton(at: .right, with: Resourses.Session.rightButtonTitle)
    }
    
}
