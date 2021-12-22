//
//  SimpleCell.swift
//  SettingsProject
//
//  Created by Wizzard Sklyarov on 2021. 12. 22..
//

import Foundation
import UIKit

class SimpleCell: ParentCell {
    static let identifier = "SimpleCell"
    
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
    }
    
    override func setupLayout() {
        super.setupLayout()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        iconBox.backgroundColor = nil
        iconImage.image = nil
        cellLabel.text = nil
    }
    
    func configure(with model: SimpleCellModel) {
        iconBox.backgroundColor = model.iconColor
        iconImage.image = model.icon
        cellLabel.text = model.title
    }
}
