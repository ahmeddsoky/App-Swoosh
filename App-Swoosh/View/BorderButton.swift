//
//  BorderButton.swift
//  App-Swoosh
//
//  Created by Ahmed Dsoky on 11/10/17.
//  Copyright © 2017 Ahmed Dsoky. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}
