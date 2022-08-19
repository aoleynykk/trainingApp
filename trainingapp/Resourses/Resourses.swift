//
//  Constants.swift
//  trainingapp
//
//  Created by Олександр Олійник on 16.08.2022.
//

import Foundation
import UIKit

enum Resourses {
    
    enum Overview {
        static var title = "Today"
        static var customButtonTitle = "All Workouts"
        static var addButtonImage = UIImage(systemName: "plus.circle.fill")
    }
    
    enum Progress {
        static var title = "Progress"
        static var leftButtonTitle = "Export"
        static var rightButtonTitle = "Details"
    }
    
    enum Session {
        static var title = "Session"
        static var leftButtonTitle = "Start"
        static var rightButtonTitle = "Finish"
    }
    
    enum Settings {
        static var title = "Settings"
    }
    
    enum Colors {
        static var selectedColor = UIColor(hexString: "#437BFE")
        static var unselectedColor = UIColor(hexString: "#929DA5")
        static var separatorColor = UIColor(hexString: "#E8ECEF")
        static var titleColor = UIColor(hexString: "#545C77")
        static var backgroundColor = UIColor(hexString: "#F8F9F9")
        
        enum Overview {
            static var customButtonCollor = UIColor(hexString: "#F0F3FF")
        }
    }
    
    enum ItemTitles {
        static var overview = "Overview"
        static var session = "Session"
        static var progress = "Progress"
        static var settings = "Settings"
    }
    
    enum Images {
        enum TabBar {
            static var overview = UIImage(systemName: "house")
            static var session = UIImage(systemName: "deskclock")
            static var progress = UIImage(systemName: "align.vertical.bottom.fill")
            static var settings = UIImage(systemName: "gearshape")
        }
        
        enum Overview {
            static var customButtonImage = UIImage(systemName: "chevron.compact.down")
        }
    }
    
    enum Fonts {
        static func font(size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size)!
        }
    }
}
