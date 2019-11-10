//
//  AppsHeaderCell.swift
//  AppStore
//
//  Created by Mateus Rovari on 10/11/19.
//  Copyright © 2019 Mateus Rovari. All rights reserved.
//

import UIKit

class AppsHeaderCell: UICollectionViewCell {
    
    let companyLabel = UILabel(text: "Facebook", font: .boldSystemFont(ofSize: 12))
    let titleLabel = UILabel(text: "Keeping up with friends is faster than ever", font: .systemFont(ofSize: 30))
    let imageView = UIImageView(cornerRadius: 8)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        companyLabel.textColor = .blue
        imageView.backgroundColor = .red
        titleLabel.numberOfLines = 2
        
        let stackView = VerticalStackView(arrangedSubViews: [
            companyLabel, titleLabel, imageView
        ], spacing: 12)
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 16, left: 0, bottom: 0, right: 0))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
