//
//  StatusCell.swift
//  SettingsProject
//
//  Created by Wizzard Sklyarov on 2021. 12. 22..
//

import Foundation
import UIKit

class StatusCell: ParentCell {
    static let identifier = "StatusCell"
    
    let statusLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray
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
        contentView.addSubview(statusLabel)
    }
    
    override func setupLayout() {
        super.setupLayout()
        NSLayoutConstraint.activate([
            statusLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            statusLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 25)
        ])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        iconBox.backgroundColor = nil
        iconImage.image = nil
        cellLabel.text = nil
        statusLabel.text = nil
    }
    
    func configure(with model: StatusCellModel) {
        iconBox.backgroundColor = model.iconColor
        iconImage.image = model.icon
        cellLabel.text = model.title
        statusLabel.text = model.status
    }
}
