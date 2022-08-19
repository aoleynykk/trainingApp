//
//  ProgressController.swift
//  trainingapp
//
//  Created by Олександр Олійник on 16.08.2022.
//

import UIKit

class ProgressController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = Resourses.Progress.title
        addNavButton(at: .left, with: Resourses.Progress.leftButtonTitle)
        addNavButton(at: .right, with: Resourses.Progress.rightButtonTitle)
    }
}
