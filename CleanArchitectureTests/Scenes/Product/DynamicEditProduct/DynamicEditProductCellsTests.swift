//
//  DynamicEditProductCellsTests.swift
//  CleanArchitectureTests
//
//  Created by Tuan Truong on 9/14/18.
//  Copyright © 2018 Sun Asterisk. All rights reserved.
//

@testable import CleanArchitecture
import UIKit
import XCTest

final class DynamicEditProductCellsTests: XCTestCase {
    
    private var nameCell: EditProductNameCell!
    private var priceCell: EditProductPriceCell!
    
    override func setUp() {
        super.setUp()
        nameCell = EditProductNameCell.loadFromNib()
        priceCell = EditProductPriceCell.loadFromNib()
    }
    
    func test_ibOutlets() {
        XCTAssertNotNil(nameCell.nameTextField)
        XCTAssertNotNil(nameCell.validationLabel)
        XCTAssertNotNil(priceCell.priceTextField)
        XCTAssertNotNil(priceCell.validationLabel)
    }
}

