//
//  PreviewCell.swift
//  AppStore
//
//  Created by Mateus Rovari on 17/11/19.
//  Copyright © 2019 Mateus Rovari. All rights reserved.
//

import UIKit

class PreviewCell: UICollectionViewCell {
    
    let previewLabel = UILabel(text: "Preview", font: .boldSystemFont(ofSize: 22))
    let horizontalController = PreviewScreenshotsController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
                
        addSubview(previewLabel)
        addSubview(horizontalController.view)
        previewLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 0, left: 20, bottom: 0, right: 20))
        horizontalController.view.anchor(top: previewLabel.bottomAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
