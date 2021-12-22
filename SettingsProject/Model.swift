//
//  Model.swift
//  SettingsProject
//
//  Created by Wizzard Sklyarov on 2021. 12. 22..
//

import Foundation
import UIKit

struct SimpleCellModel {
    let title: String
    let icon: UIImage
    let iconColor: UIColor
    let handler: (() -> Void)
}

struct SwitchCellModel {
    let title: String
    let icon: UIImage
    let iconColor: UIColor
    let handler: (() -> Void)
    var state: Bool
}

struct StatusCellModel {
    let title: String
    let icon: UIImage
    let iconColor: UIColor
    let status: String
    let handler: (() -> Void)
}

struct UpdateCellModel {
    let title: String
    let icon: UIImage
    let iconColor: UIColor
    let updateTitle: Int
    let updateColor: UIColor
    let handler: (() -> Void)
}

enum CellType {
    case simpleCell(model: SimpleCellModel)
    case switchCell(model: SwitchCellModel)
    case statusCell(model: StatusCellModel)
    case updateCell(model: UpdateCellModel)
}

