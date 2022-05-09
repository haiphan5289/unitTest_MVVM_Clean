//
//  EditProductPriceCell.swift
//  CleanArchitecture
//
//  Created by Tuan Truong on 9/10/18.
//  Copyright © 2018 Sun Asterisk. All rights reserved.
//

import UIKit
import RxSwift
import Reusable

final class EditProductPriceCell: UITableViewCell, NibReusable {
    
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var validationLabel: UILabel!
    
    private(set) var disposeBag = DisposeBag()
    
    override func prepareForReuse() {
        super.prepareForReuse()
        disposeBag = DisposeBag()
    }
}
