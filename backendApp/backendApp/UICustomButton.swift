//
//  UICustomButton.swift
//  backendApp
//
//  Created by Uri on 4/2/23.
//

import UIKit

class UICustomButton: UIButton {
    
    // initializes the object with its properties
    override func awakeFromNib() {
        layer.cornerRadius = 12
        layer.masksToBounds = true
        backgroundColor = .orange
        tintColor = .white
    }
}
