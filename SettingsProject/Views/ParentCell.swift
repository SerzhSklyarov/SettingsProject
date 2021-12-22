//
//  ParentCell.swift
//  SettingsProject
//
//  Created by Wizzard Sklyarov on 2021. 12. 22..
//

import Foundation
import UIKit

class ParentCell: UITableViewCell {
    
    // MARK: - Views
    
    let iconBox: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let iconImage: UIImageView = {
        let icon = UIImageView()
        icon.tintColor = .white
        icon.translatesAutoresizingMaskIntoConstraints = false
        
        return icon
    }()
    
    let cellLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    // MARK: - Setup
    
    func setupHierarchy() {
        contentView.addSubview(cellLabel)
        contentView.addSubview(iconBox)
        iconBox.addSubview(iconImage)
    }
    
    func setupLayout() {
        let boxSize: CGFloat = contentView.frame.size.height - 12
        NSLayoutConstraint.activate([
            iconBox.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 25),
            iconBox.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            iconBox.widthAnchor.constraint(equalToConstant: boxSize),
            iconBox.heightAnchor.constraint(equalToConstant: boxSize),
            
            iconImage.centerXAnchor.constraint(equalTo: iconBox.centerXAnchor),
            iconImage.centerYAnchor.constraint(equalTo: iconBox.centerYAnchor),
            iconImage.widthAnchor.constraint(equalToConstant: boxSize * 0.55),
            iconImage.heightAnchor.constraint(equalToConstant: boxSize * 0.55),
            
            cellLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            cellLabel.leftAnchor.constraint(equalTo: iconBox.rightAnchor, constant: 25)
        ])
        
    }
    
    // MARK: - Metrics

}

