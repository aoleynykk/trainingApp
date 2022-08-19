//
//  UIView + ext.swift
//  trainingapp
//
//  Created by Олександр Олійник on 16.08.2022.
//

import Foundation
import UIKit

extension UIView {
    
    func addBottomBorder(color: UIColor, height: CGFloat) {
        let separator = UIView()
        separator.backgroundColor = color
        separator.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        separator.frame = CGRect(x: 0,
                                 y: frame.height - height,
                                 width: frame.width,
                                 height: height)
        addSubview(separator)
    }
    
    func addFlashing(_ button: UIButton) {
        button.addTarget(self, action: #selector(handleIn), for: [.touchDown, .touchDragInside])
        
        button.addTarget(self, action: #selector(handleOut), for: [.touchUpInside, .touchDragOutside, .touchUpOutside, .touchDragExit, .touchCancel])
    }
    
    
    @objc func handleIn() {
        UIView.animate(withDuration: 0.25) {
            self.alpha = 0.3
        }
    }
    
    @objc func handleOut() {
        UIView.animate(withDuration: 0.25) {
            self.alpha = 1
        }
    }
}
