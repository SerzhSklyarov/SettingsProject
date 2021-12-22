//
//  UpdateCell.swift
//  SettingsProject
//
//  Created by Wizzard Sklyarov on 2021. 12. 22..
//

import Foundation
import UIKit

class UpdateCell: ParentCell {
    static let identifier = "UpdateCell"
    
    let updateBox: UIView = {
        let updateBox = UIView()
        updateBox.translatesAutoresizingMaskIntoConstraints = false
        updateBox.clipsToBounds = true
        
        return updateBox
    }()
    
    let updateLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.clipsToBounds = true
        accessoryType = .disclosureIndicator
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setupHierarchy() {
        super.setupHierarchy()
        contentView.addSubview(updateBox)
        updateBox.addSubview(updateLabel)
    }
    
    override func setupLayout() {
        super.setupLayout()
        NSLayoutConstraint.activate([
            updateBox.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            updateBox.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 25),
            updateLabel.centerXAnchor.constraint(equalTo: updateBox.centerXAnchor),
            updateLabel.centerYAnchor.constraint(equalTo: updateBox.centerYAnchor)
        ])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        iconBox.backgroundColor = nil
        iconImage.image = nil
        cellLabel.text = nil
        updateBox.backgroundColor = nil
        updateLabel.text = nil
    }
    
    func configure(with model: UpdateCellModel) {
        iconBox.backgroundColor = model.iconColor
        iconImage.image = model.icon
        cellLabel.text = model.title
        updateBox.backgroundColor = model.updateColor
        updateLabel.text = model.updateTitle
    }
}
