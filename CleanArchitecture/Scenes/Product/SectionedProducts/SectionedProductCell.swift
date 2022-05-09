//
//  SectionedProductCell.swift
//  CleanArchitecture
//
//  Created by Tuan Truong on 6/7/18.
//  Copyright © 2018 Sun Asterisk. All rights reserved.
//

import UIKit
import Reusable

final class SectionedProductCell: UITableViewCell, NibReusable {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var editButton: UIButton!
    
    var editProductAction: (() -> Void)?
    
    func bindViewModel(_ viewModel: ProductItemViewModel?) {
        if let viewModel = viewModel {
            nameLabel.text = viewModel.name
            priceLabel.text = viewModel.price
            backgroundColor = viewModel.backgroundColor
        } else {
            nameLabel.text = ""
            priceLabel.text = ""
            backgroundColor = ColorCompatibility.systemBackground
        }
    }
    
    @IBAction func edit(_ sender: Any) {
        editProductAction?()
    }
}

