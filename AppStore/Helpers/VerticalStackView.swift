//
//  VerticalStackView.swift
//  AppStore
//
//  Created by Mateus Rovari on 07/11/19.
//  Copyright © 2019 Mateus Rovari. All rights reserved.
//

import UIKit

class VerticalStackView: UIStackView {
    
    init(arrangedSubViews: [UIView], spacing: CGFloat = 0) {
        super.init(frame: .zero)
        
        arrangedSubViews.forEach({addArrangedSubview($0)})
        
        self.spacing = spacing
        self.axis = .vertical
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
